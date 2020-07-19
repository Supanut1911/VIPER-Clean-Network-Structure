//
//  UserService.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class UserService: BaseService {
    
    //fetch News
    func getNEWS(_ form: EmptyForm, completionBlock: ((Result<NewResponse, Error>)-> Void)? = nil) -> Operation {
        return apiManager.postOperation(to: "/posts", form: form, completion: completionBlock)
    }
    
    
}
