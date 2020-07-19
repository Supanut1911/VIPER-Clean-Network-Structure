//
//  String.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//


import Foundation
import UIKit
import var CommonCrypto.CC_MD5_DIGEST_LENGTH
import func CommonCrypto.CC_MD5
import typealias CommonCrypto.CC_LONG
import GoogleMaps

extension String {
    func localized(bundle: Bundle = .main, tableName: String = UserSession.shared.currentLanguage?.rawValue ?? "") -> String { // "Localizable"
         return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
     }
    
    init(absoluteURLStringWithPercentEscapedPath path: String) {
        if !path.hasPrefix("http") {
            self = Config.BaseAPIURL + ((path.hasPrefix("/") ||  path.hasPrefix("_test")) ? path : "/" + path)
        } else {
            self = path
        }
    }
    
    func selectorValue() -> Selector {
        return NSSelectorFromString(self)
    }
    
    func url() -> URL? {
        let utf8 = self.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        return URL(string: utf8)
    }
    
    var bool: Bool {
        switch self.lowercased() {
        case "true", "t", "yes", "y", "1":
            return true
        case "false", "f", "no", "n", "0":
            return false
        default:
            return false
        }
    }
    
    public func convertHtmlToAttributedStringWithCSS(color: UIColor = .black) -> String {
        return "<font color=\(color.toHexString())>\(self)</font>";
    }
    
    func locationValue() -> CLLocation {
        var latitude: String = ""
        var longitude: String = ""
        var isLongitude = false
        
        self.forEach {
            if isLongitude {
                longitude = longitude + [$0]
            } else if $0 == "," {
                isLongitude = true
            } else {
                latitude = latitude + [$0]
            }
        }
        return CLLocation(latitude: (Double(latitude.trimmingCharacters(in: .whitespaces)) ?? 0.0),
                          longitude: (Double(longitude.trimmingCharacters(in: .whitespaces)) ?? 0.0))
    }
    
    var buddhistYear: String {
        return "\((Int(self) ?? 0) + 543)"
    }
    
    var gregorianYear: String {
        return "\((Int(self) ?? 0) - 543)"
    }
    
    var floatValue: Float {
        return (self as NSString).floatValue
    }
    
    var imageValue: UIImage {
        return UIImage(named: self)!
    }
        
    func getMySLocation() -> String {
        var locationText = ""
        let locations = self.components(separatedBy: "#")
        
        locations.forEach { (location) in
            let latlong = location.components(separatedBy: ":")
            if latlong.count > 1 {
                let latitute = latlong[0].floatValue
                let longitute = latlong[1].floatValue
                locationText += String(format: "%.6f,%.6f ", latitute, longitute)
            }
        }
        return locationText
    }
    
    
    
    func dateValue(_ format: String = "yyyy-MM-dd'T'HH:mm:ssZ", locale: String = "locale".localized()) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.locale = Locale(identifier: locale)
        return dateFormatter.date(from:self) ?? Date()
    }
    
    func dateValueGregorian() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.locale = Locale(identifier: Locale.US)
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssXXXXX"
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT")
        return dateFormatter.date(from:self) ?? Date()
    }
    
    func MD5() -> String {
        let length = Int(CC_MD5_DIGEST_LENGTH)
        let messageData = self.data(using:.utf8)!
        var digestData = Data(count: length)
        
        _ = digestData.withUnsafeMutableBytes { digestBytes -> UInt8 in
            messageData.withUnsafeBytes { messageBytes -> UInt8 in
                if let messageBytesBaseAddress = messageBytes.baseAddress, let digestBytesBlindMemory = digestBytes.bindMemory(to: UInt8.self).baseAddress {
                    let messageLength = CC_LONG(messageData.count)
                    CC_MD5(messageBytesBaseAddress, messageLength, digestBytesBlindMemory)
                }
                return 0
            }
        }
        let md5Data = digestData
        
        let md5Hex =  md5Data.map { String(format: "%02hhx", $0) }.joined()
        return md5Hex
    }
    
    static let numberFormatter = NumberFormatter()
    var doubleValue: Double {
        String.numberFormatter.decimalSeparator = "."
        if let result =  String.numberFormatter.number(from: self) {
            return result.doubleValue
        } else {
            String.numberFormatter.decimalSeparator = ","
            if let result = String.numberFormatter.number(from: self) {
                return result.doubleValue
            }
        }
        return 0
    }
    
    var length: Int {
        return count
    }
    
    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }
    
    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }
    
    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }
    
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
    
    public func addHtmlToAttributed(_ size: String = "0") -> String {
        return "<font size=\(size)>\(self)</font>";
    }
    
    func generateQRCode() -> UIImage? {
        let data = self.data(using: String.Encoding.ascii)

        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)

            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }

        return nil
    }
    
    func isValidPassword() -> Bool {
        let regex = try! NSRegularExpression(pattern: ".*[^A-Za-z0-9].*", options: NSRegularExpression.Options())
        if regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(), range:NSMakeRange(0, self.count)) != nil {
            return false
        }
        let lenghtRegEx = "^[A-Za-z0-9].{5,14}$"

        let passwordPredicate = NSPredicate(format:"SELF MATCHES %@", lenghtRegEx)
        return passwordPredicate.evaluate(with: self)
    }
    
}
