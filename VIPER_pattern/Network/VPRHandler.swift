//
//  VPRHandler.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Alamofire

class MySHandler: RequestAdapter {
    private let sessionManager: Alamofire.SessionManager!
    private let semaphore = DispatchSemaphore(value: 1)
    private let isRefreshing = false
    private var completions = [Alamofire.RequestRetryCompletion]()
    private let lock = NSLock()
    
    init() {
        let configuration = URLSessionConfiguration.default
        configuration.httpCookieStorage = HTTPCookieStorage.shared
        sessionManager = Alamofire.SessionManager(configuration: configuration)
    }
    
    func adapt(_ urlRequest: URLRequest) throws -> URLRequest {
        var urlRequest = urlRequest
        urlRequest.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue(UserAgent.shared.string(), forHTTPHeaderField: "User-Agent")
        if UserSession.shared.valid {
            urlRequest.addValue(String(format: "Bearer %@", UserSession.shared.accessToken?.accessToken ?? ""), forHTTPHeaderField: "Authorization")
        }
        
        if Config.DataRequestDebugMode {
            print("request url: \(urlRequest.url?.absoluteString ?? "")")
            print("request header: \(urlRequest.allHTTPHeaderFields?.description ?? "")")
            if let body = urlRequest.httpBody, let bodyString = String(bytes: body, encoding: .utf8) {
                print("request parameters: \(bodyString)")
            }
        }
        return urlRequest
    }
}

