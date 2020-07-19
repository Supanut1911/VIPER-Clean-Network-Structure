//
//  UserAgent.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import DeviceKit

class UserAgent {
    class var shared: UserAgent {
        struct Static {
            static let instance: UserAgent = UserAgent()
        }
        return Static.instance
    }
    
    private lazy var osName: String = {
        #if os(iOS)
        return "iOS"
        #elseif os(watchOS)
        return "watchOS"
        #elseif os(tvOS)
        return "tvOS"
        #elseif os(macOS)
        return "OS X"
        #elseif os(Linux)
        return "Linux"
        #else
        return "Unknown"
        #endif
    }()
    
    func string() -> String {
        guard let info = Bundle.main.infoDictionary else {
            return ""
        }
        let executable = info[kCFBundleExecutableKey as String] as? String ?? "Unknown"
        let bundle = info[kCFBundleIdentifierKey as String] as? String ?? "Unknown"
        let appVersion = info["CFBundleShortVersionString"] as? String ?? "Unknown"
        let appBuild = info[kCFBundleVersionKey as String] as? String ?? "Unknown"
        let device = Device.mapToDevice(identifier: Device.identifier)
        let osNameVersion: String = {
            let version = ProcessInfo.processInfo.operatingSystemVersion
            let versionString = String(format: "%d.%d.%d", version.majorVersion, version.minorVersion, version.patchVersion)
            return "\(osName) \(versionString)"
        }()
        
        return "\(executable)/\(appVersion) (\(bundle); build:\(appBuild); \(osNameVersion); \(device))"
    }
}

