//
//  VPRErrpr.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

enum VPRError: LocalizedError {
    case notFound(String)
    case badRequest(String)
    case unauthorized(String)
    case paymentRequired(String)
    case validationError(String)
    case otherError(String)
    
    var errorDescription: String? {
        switch self {
        case let .notFound(message):
            return message
        case let .badRequest(message):
            return message
        case let .unauthorized(message):
            return message
        case let .paymentRequired(message):
            return message
        case let .validationError(message):
            return message
        case let .otherError(message):
            return message
        }
    }
}
