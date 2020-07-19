//
//  VPRManager.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Alamofire
import DeviceKit

protocol ValidationForm {
    func validation() throws
}

class VPRAPIManager: NSObject, APIManager {
    static let shared = VPRAPIManager()
    
    let sessionManager: SessionManager = {
        let configuration = URLSessionConfiguration.default
        configuration.httpCookieStorage = HTTPCookieStorage.shared
        return SessionManager(adapter: MySHandler(), configuration: configuration)
    }()
    
    var baseURL: String = Config.BaseAPIURL
    
    func didReceiveNewAccessToken(accessToken: AccessToken) {
    
    }
    
    private func createParameters<T: Codable>(_ form: T?) -> [String: Any]? {
        guard let form = form else { return nil}
        do {
            let data = try JSON.shared.encode(form)
            return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        } catch {
            return nil
        }
    }
    
    private func validation<T: Codable>(_ form: T?) -> Error? {
        guard let form = form as? ValidationForm else { return nil}
        do {
            try form.validation()
            return nil
        } catch let error {
            return error
        }
    }
    
    func postOperation<T: Codable, U: Codable>(
        to path: String,
        header: [String: String]? = nil,
        form: U? = nil,
        requiredRefreshToken: Bool = true,
        completion: ((Swift.Result<T, Error>) -> Void)?) -> BlockOperation {
        let completePath = String(absoluteURLStringWithPercentEscapedPath: path)
        return BlockOperation { [weak self] in
            if let error = self?.validation(form) {
                completion?(Swift.Result<T, Error>.failure(error))
                return
            }
            let handleCompletion = self?.handleResponse(with: completion)
            self?.get(
                from: "https://jsonplaceholder.typicode.com/posts",
//                to: completePath,
                header: header,
                parameters: self?.createParameters(form),
                completion: handleCompletion)
        }
    }
    
    fileprivate func errorFormResult(_ result: DataResponse<Data>) -> VPRError {
        do {
            let message = try JSON.shared.decode(Message.self, from: result.data ?? Data())
            let messageString = message.message ?? ""
            switch result.response?.statusCode ?? 0{
            case 404:
                return VPRError.notFound(messageString)
            case 400:
                return VPRError.badRequest(messageString)
            case 401:
                if UserSession.shared.valid {
                    UserSession.shared.removeAccessToken()
                    NotificationCenter
                    .default
                        .post(name: NSNotification.Name(rawValue: UserSession.NotificationUserSessionUnauthorizedKey), object: nil)
                }
            case 402:
                return VPRError.paymentRequired(messageString)
            default:
                return VPRError.otherError(messageString)
            }
            return VPRError.unauthorized(messageString)
            
        } catch let error {
            return VPRError.otherError(error.localizedDescription)
        }
    }
    
    fileprivate func handleResponse<T: Codable>(with completion: ((Swift.Result<T, Error>) -> Void)? = nil) -> (DataResponse<Data>) -> Void {
        return { [weak self] result in
            guard let weakSelf = self else { return }
            if Config.DataResponseDebugMode {
                print("response status: \(result.response?.statusCode ?? 200)")
                print("response: \(String(data: result.data ?? Data(), encoding: .utf8) ?? "")")
            }
            switch result.response?.statusCode ?? 404 {
            case 200 ..< 300:
                switch result.result {
                case let .success(response):
                    do {
                        let model = try JSON.shared.decode(T.self, from: response)
                        completion?(Swift.Result<T, Error>.success(model))
                    } catch let error {
                        completion?(Swift.Result<T, Error>.failure(VPRError.otherError(error.localizedDescription)))
                    }
                case let .failure(error):
                    completion?(Swift.Result<T, Error>.failure(VPRError.otherError(error.localizedDescription)))
                }
            default:
                completion?(Swift.Result<T, Error>.failure(weakSelf.errorFormResult(result)))
            }
            
        }
    }
    
    
}
