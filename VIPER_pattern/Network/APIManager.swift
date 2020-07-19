//
//  APIManager.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//
import Alamofire

class SessionManager {
    fileprivate let sessionManager: Alamofire.SessionManager
    var sessionDelegate: Alamofire.SessionDelegate {
        return sessionManager.delegate
    }
    
    init(adapter: RequestAdapter, configuration: URLSessionConfiguration) {
        sessionManager = Alamofire.SessionManager(configuration: configuration)
        sessionManager.adapter = adapter
    }
    
}

protocol APIManager {
    var sessionManager: SessionManager { get }
    var baseURL: String { get }
    func didReceiveNewAccessToken(accessToken: AccessToken)
}

extension APIManager {
    static func defaultHeader() -> [String: String] {
        return Alamofire.SessionManager.defaultHTTPHeaders
    }
    
    func get(
        from url: String,
        header: [String: String]? = nil,
        parameters: [String: Any]? = nil,
        requiredRefreshToken: Bool = true,
        completion: ((DataResponse<Data>) -> Void)? = nil) {
        request(with: .get, url: url, header: header, parameters: parameters, encoding: URLEncoding.default, completion: completion)
    }
    
    func post(
        to url: String,
        header: [String: String]? = nil,
        parameters: [String: Any]? = nil,
        requiredRefreshToken: Bool = true,
        completion: ((DataResponse<Data>) -> Void)? = nil) {
        request(with: .post, url: url, header: header, parameters: parameters, completion: completion)

    }
    
    fileprivate func request(
        with method: HTTPMethod,
        url: String,
        header: [String: String]?,
        parameters: [String: Any]?,
        encoding: ParameterEncoding = URLEncoding.httpBody,
        completion: ((DataResponse<Data>) -> Void)?) {
        sessionManager
            .sessionManager
            .request(url, method: method, parameters: parameters, encoding: encoding)
            .validate()
            .responseData(completionHandler: { response in
                completion?(response)
            })
    }
}
