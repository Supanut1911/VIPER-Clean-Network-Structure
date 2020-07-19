//
//  ServiceLacator.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class ServiceLocator {
    
    private let apiManager = VPRAPIManager()
    
    lazy var userService: UserService = {
        UserService(apiManager)
    }()
    
//    lazy var appSerVice: AppService = {
//        AppService(apiManager)
//    }()
    
    
    class var shared: ServiceLocator {
        struct Static {
            static let instance: ServiceLocator = ServiceLocator()
        }
        return Static.instance
    }
}

