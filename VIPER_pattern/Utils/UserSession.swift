//
//  UserSession.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//


import Foundation
import SwiftKeychainWrapper

private let userSessionAccessTokenKey = "UserSessionAccessTokenKey"
private let userSessionUserKey = "UserSessionUserKey"

private let CHECK_IN_COUNT = "CheckInCount"
private let CHECK_IN_LAST_TIME = "CheckInLastTime"
private let SWITCH_LANGUAGE = "SwitchLanguage"
private let LOGIN_IN_LAST_TIME = "LoginInLastTime"
private let SHOW_USER_INTRODUCTION = "ShowUserIntroduction"
private let SHOW_PROMOTION_INTRODUCTION = "SHOW_PROMOTION_INTRODUCTION"

enum LoginType: String {
    case pin = "1"
    case account = "2"
}

enum Language: String {
    case english = "English"
    case thai = "Thai"
    
    func getApi() -> String {
        switch self {
        case .english:
            return "en"
        case .thai:
            return "th"
        }
    }
}

class UserSession {
    static let NotificationUserSessionSavedKey = "NotificationUserSessionSaved"
    static let NotificationUserSessionRemovedKey = "NotificationUserSessionRemoved"
    static let NotificationUserSessionObjectKey = "NotificationUserSessionObject"
    static let NotificationUserSessionUnauthorizedKey = "NotificationUserSessionUnauthorized"
    
    var checkInLimit: Int = 0
    
    var accessToken: AccessToken?
    var user: User?
    
    var currentLanguage: Language? = .thai // Static Language
    var userLoginType: LoginType?
    var currentDate: Date?
//    var status: CheckMacAddressStatusType?
    var valid: Bool {
        return accessToken?.accessToken != nil
    }
    
    private let operationQueue = OperationQueue()
    private let requestRefreshTokenOperationQueue = OperationQueue()
    
    class var shared: UserSession {
        struct Static {
            static let instance: UserSession = UserSession()
        }
        return Static.instance
    }
    
    init() {
        requestRefreshTokenOperationQueue.maxConcurrentOperationCount = 1
        
        let userDefaults = UserDefaults.standard
        
        do {
            if let data = userDefaults.object(forKey: userSessionAccessTokenKey) as? Data {
                accessToken = try JSON.shared.decode(AccessToken.self, from: data)
            }
            if let data = userDefaults.object(forKey: userSessionUserKey) as? Data {
                user = try JSON.shared.decode(User.self, from: data)
            }
            // Static Language
//            setupLanguage()
        } catch {
        }
    }
    
    fileprivate func subscribeFCM() {
//        guard let user = user else { return }
//        Messaging.messaging().subscribe(toTopic: "\(user.id)")
    }
    
    fileprivate func unsubscribeFCM() {
//        guard let user = user else { return }
//        Messaging.messaging().unsubscribe(fromTopic: "\(user.id )")
    }
    
    func save(user newUser: User?) {
        guard let newUser = newUser else { return }
        
        user = newUser
        subscribeFCM()
        do {
            UserDefaults.standard.set(try JSON.shared.encode(newUser), forKey: userSessionUserKey)
        } catch {
        }
    }
    
    func save(accessToken token: AccessToken?) {
        guard let token = token else { return }
        
        accessToken = token
        do {
            UserDefaults.standard.set(try JSON.shared.encode(token), forKey: userSessionAccessTokenKey)
        } catch {
        }
    }
    
    func removeAccessToken() {
        unsubscribeFCM()
        user = nil
        accessToken = nil
        UserDefaults.standard.removeObject(forKey: userSessionAccessTokenKey)
        UserDefaults.standard.removeObject(forKey: userSessionUserKey)
    }
    
    // MARK: - Check in date
//    func getCheckInLastTime() -> Date {
//        let stringDate = KeychainWrapper.standard.string(forKey: CHECK_IN_LAST_TIME)
//        return stringDate?.dateValueGregorian() ?? Date()
//    }
//
//    func setCheckInLastTime(_ date: Date) {
//        _ = KeychainWrapper.standard.set(date.stringValueGregorian(), forKey: CHECK_IN_LAST_TIME)
//    }
//
//    // MARK: - CheckLogin date
//    func getLoginInLastTime() -> Date {
//        let stringDate = KeychainWrapper.standard.string(forKey: LOGIN_IN_LAST_TIME)
//        return stringDate?.dateValueGregorian() ?? Date()
//    }
//
//    func setLoginInLastTime() {
//        _ = KeychainWrapper.standard.set(Date().stringValueGregorian(), forKey: LOGIN_IN_LAST_TIME)
//    }
//
//    // MARK: - Check in limit
//    func getCheckInCount() -> Int {
//        var current = (UserSession.shared.currentDate ?? Date())
//        current = current.format(Locale.TH)
//        let date = getCheckInLastTime()
//        if date.equalToDate(current) {
//            // Today
//            switch date.getStyle(current) {
//            case .morning:
//                return KeychainWrapper.standard.integer(forKey: CHECK_IN_COUNT) ?? 0
//            case .afternoon:
//                return KeychainWrapper.standard.integer(forKey: CHECK_IN_COUNT) ?? 0
//            case .none:
//                resetCheckInCount()
//            }
//        } else {
//            resetCheckInCount()
//        }
//        return 0
//    }
//
//    func resetCheckInCount() {
//        _ = KeychainWrapper.standard.set(0, forKey: CHECK_IN_COUNT)
//    }
//
//    func setCheckInCount() {
//        let current = UserSession.shared.currentDate ?? Date()
//        setCheckInLastTime(current)
//        var checkInCount = getCheckInCount()
//        checkInCount += 1
//        _ = KeychainWrapper.standard.set(checkInCount, forKey: CHECK_IN_COUNT)
//    }
//
//    // MARK: - Language
//    func setupLanguage() {
//        let language = KeychainWrapper.standard.string(forKey: SWITCH_LANGUAGE)
//        self.currentLanguage = Language(rawValue: language ?? Language.thai.rawValue)
//    }
//
//    func setLanguage(_ language: Language) {
//        _ = KeychainWrapper.standard.set(language.rawValue, forKey: SWITCH_LANGUAGE)
//        self.currentLanguage = language
//    }
//
}



