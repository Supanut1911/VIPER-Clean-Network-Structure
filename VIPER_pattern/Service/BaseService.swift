//
//  BaseService.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class BaseService {
    var apiManager: VPRAPIManager
    
    init(_ apiManager: VPRAPIManager) {
        self.apiManager = apiManager
    }
}
