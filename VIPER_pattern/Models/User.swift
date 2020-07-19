//
//  User.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

struct User: Codable {
    let token: String?
    let userId: String?
    let userPin: String?
    let userIdCard: String?
    let userMacAddress: String?
    let userName: String?
    let userSurname: String?
    let engName: String?
    let engSurname: String?
    let userEmail: String?
    let loginLastDate: String?
    let loginLastTime: String?
    let typeShift: String?
    let imageProfile: String?
    let success: String?
    let position: String?
    let company: String?
    let groupCompanyType: String?
    
    enum CodingKeys: String, CodingKey {
        case token = "token"
        case userId = "user_id"
        case userPin = "user_pin"
        case userIdCard = "user_id_card"
        case userMacAddress = "user_mac_address"
        case userName = "user_name"
        case userSurname = "user_surname"
        case engName = "eng_name"
        case engSurname = "eng_surname"
        case userEmail = "user_email"
        case loginLastDate = "login_last_date"
        case loginLastTime = "login_last_time"
        case typeShift = "type_shift"
        case imageProfile = "image_profile"
        case success = "StatusID"
        case position = "position"
        case company = "company"
        case groupCompanyType = "group_comtype"
    }
}


