//
//  Config.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class Config {
    //FIXME: - wait for MyS url
    static var AppStoreUrl = ""
    static var GMSProvideApiKey = ""
    static var BuildNumber = ""
    static var VersionName = ""
    static var BaseURL = ""
    static var BaseAPIURL = ""
    static var Firebaseplist = ""
    static var DataRequestDebugMode = false
    static var DataResponseDebugMode = false
    static func readConfig() {
        BuildNumber = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? ""
        VersionName = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
        GMSProvideApiKey = Bundle.main.infoDictionary?["GMSApiKey"] as? String ?? ""
        Firebaseplist = Bundle.main.infoDictionary?["Firebaseplist"] as? String ?? ""
//        BaseURL = Bundle.main.infoDictionary?["BaseURL"] as? String ?? ""
//        let apiPath = Bundle.main.infoDictionary?["ApiPath"] as? String ?? ""
//        BaseAPIURL = "\(BaseURL)/\(apiPath)"
        BaseURL = "https://jsonplaceholder.typicode.com/"
        let apipath = "/post"
         BaseAPIURL = "\(BaseURL)/\(apipath)"
        
        
        if Bundle.main.infoDictionary?["Mode"] as? String ?? "" == "production" {
            DataRequestDebugMode = false
            DataResponseDebugMode = false
        } else {
            DataRequestDebugMode = true
            DataResponseDebugMode = true
        }
    }
}
