//
//  UIColor.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

extension UIColor {
    
    static let azure = UIColor(red: 0/255.0, green: 127/255.0, blue: 255/255.0, alpha: 1.0)
    static let violet = UIColor(red: 127/255.0, green: 0/255.0, blue: 255/255.0, alpha: 1.0)
    static let rose = UIColor(red: 0/255.0, green: 100/255.0, blue: 50/255.0, alpha: 1.0)
    static let MySCyan = UIColor(red: 0/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
    
    // MARK: - Blue
    static var MySBlue: UIColor {
        return UIColor(named: "MSBlue") ?? .clear
    }
    
    static var MySDarkBlue: UIColor {
        return UIColor(named: "MSNavbar1") ?? .clear
    }
    
    static var MySMiddleBlue: UIColor {
        return UIColor(named: "MSNavbar2") ?? .clear
    }
    
    static var MySNotiBlue: UIColor {
        return UIColor(named: "MySNotificationBlue") ?? .clear
    }
    
    static var MySLightBlue: UIColor {
        return UIColor(named: "MSNavbar3") ?? .clear
    }
    static let MySLightBlueSecond = UIColor(red: 0/255.0, green: 174/255.0, blue: 255/255.0, alpha: 1.0)
    static let MySUltraLightBlue = UIColor(red: 226/255.0, green: 244/255.0, blue: 252/255.0, alpha: 1.0)
    static let MySSuperUltraLightBlue = UIColor(red: 223/255.0, green: 232/255.0, blue: 247/255.0, alpha: 1.0)
    static let MySLightAlpha3Blue = UIColor(red: 32/255.0, green: 194/255.0, blue: 226/255.0, alpha: 0.3)
    
    static let MySStatusDarkBlue = UIColor(red: 52/255.0, green: 120/255.0, blue: 183/255.0, alpha: 1.0)
    static let MySStatusSoftBlue = UIColor(red: 94/255.0, green: 150/255.0, blue: 202/255.0, alpha: 1.0)
    
    static let MySChartBlue = UIColor(red: 139/255.0, green: 233/255.0, blue: 252/255.0, alpha: 1.0)
    
    // MARK: - Pink
    static let MySLightPink = UIColor(red: 251/255.0, green: 148/255.0, blue: 252/255.0, alpha: 1.0)
    static let MySChartPink = UIColor(red: 239/255.0, green: 138/255.0, blue: 156/255.0, alpha: 1.0)
    
    //MARK: - Green
    static let MySLightGreen = UIColor(red: 82/255.0, green: 223/255.0, blue: 94/255.0, alpha: 1.0)
    static var MySDarkGreen: UIColor {
        return UIColor(named: "MySDarkGreen") ?? .clear
    }
    
    static var MySGreen: UIColor {
        return UIColor(named: "MySGreen") ?? .clear
    }
    
    static let MySLightGreenAlpha1 = UIColor(red: 82/255.0, green: 223/255.0, blue: 94/255.0, alpha: 0.1)
    static let MySLightGreenSecond = UIColor(red: 90/255.0, green: 205/255.0, blue: 93/255.0, alpha: 1.0)
    static let MySLightGreenThirth = UIColor(red: 98/255.0, green: 223/255.0, blue: 93/255.0, alpha: 1.0)
    static var MySSuperUltraLightGreen: UIColor {
        return UIColor(named: "MySSuperUltraLightGreen") ?? .clear
    }
    static var MySGroupCompanySecondLine: UIColor {
        return UIColor(named: "MySGroupCompanySecondLine") ?? .clear
    }
    static let MySStatusDarkGreen = UIColor(red: 77/255.0, green: 177/255.0, blue: 17/255.0, alpha: 1.0)
    static let MySStatusSoftGreen = UIColor(red: 85/255.0, green: 195/255.0, blue: 83/255.0, alpha: 1.0)
    
    // MARK: - Orange
    static var MySOrange: UIColor {
        return UIColor(named: "MySOrange") ?? UIColor(red: 241/255.0, green: 168/255.0, blue: 70/255.0, alpha: 1.0)
    }
    
    static var MySGroupOrangeBackground: UIColor {
        return UIColor(named: "MySGroupOrangeBackground") ?? .clear
    }
    
    static let MySLightOrange = UIColor(red: 254/255.0, green: 205/255.0, blue: 42/255.0, alpha: 1.0)
    static let MySUltraLightOrange = UIColor(red: 255/255.0, green: 176/255.0, blue: 60/255.0, alpha: 1.0)
    static let MySUltraLightOrangeAlpha1 = UIColor(red: 255/255.0, green: 176/255.0, blue: 60/255.0, alpha: 0.1)
    static let MySMapUltraLightOrange = UIColor(red: 254/255.0, green: 205/255.0, blue: 42/255.0, alpha: 0.3)
    
    static let MySChartOrange = UIColor(red: 246/255.0, green: 196/255.0, blue: 133/255.0, alpha: 1.0)
    
    // MARK: - Red
    static var MySRed: UIColor {
        return UIColor(named: "MySRed") ?? UIColor(red: 218/255.0, green: 34/255.0, blue: 34/255.0, alpha: 1.0)
    }
    static var MySLightRed: UIColor {
        return UIColor(named: "MySLightRed") ?? UIColor(red: 255/255.0, green: 106/255.0, blue: 118/255.0, alpha: 1.0)
    }
    static var MySUltraLightRed: UIColor {
        return UIColor(named: "MySUltraLightRed") ?? UIColor(red: 247/255.0, green: 122/255.0, blue: 122/255.0, alpha: 1.0)
    }
    
    // MARK: - Yellow
    static var MySYellow: UIColor {
        return UIColor(named: "MySYellow") ?? UIColor(red: 240/255.0, green: 227/255.0, blue: 143/255.0, alpha: 1.0)
    }
    static let MySYellowSecond = UIColor(red: 249/255.0, green: 206/255.0, blue: 86/255.0, alpha: 1.0)
    static let MySLightYellow = UIColor(red: 249/255.0, green: 206/255.0, blue: 100/255.0, alpha: 1.0)
    
    // MARK: - Grey
    static var MySUltraLightGroup: UIColor {
        return UIColor(named: "MySUltraLightGroup") ?? .clear
    }
    static var MySBackground: UIColor {
        return UIColor(named: "MySBackground") ?? .clear
    }
    static let MySGrey = UIColor(red: 191/255.0, green: 191/255.0, blue: 191/255.0, alpha: 1.0)
    static var MySLightGrey: UIColor {
        return UIColor(named: "MySLightGrey") ?? .clear
    }
    static let MySUltraLightGrey = UIColor(red: 208/255.0, green: 208/255.0, blue: 208/255.0, alpha: 1.0)
    static var MySSuperUltraLightGrey: UIColor {
        return UIColor(named: "MySSuperUltraLightGrey") ?? .clear
    }
    static var MySSuperUltraLightBackgroundGrey: UIColor {
        return UIColor(named: "MySSuperUltraLightBackgroundGrey") ?? UIColor(red: 235/255.0, green: 235/255.0, blue: 235/255.0, alpha: 1.0)
    }
    static var MySGroupTableViewGreyLightBlue: UIColor {
        return UIColor(named: "MySGroupTableViewGreyLightBlue") ?? UIColor(red: 228/255.0, green: 235/255.0, blue: 243/255.0, alpha: 1.0)
    }
    static var MySUltraLightBlueGrey: UIColor {
        return UIColor(named: "MySUltraLightBlueGrey") ?? .clear
    }
    static var MySUltraBlueGrey: UIColor {
        return UIColor(named: "MySUltraBlueGrey") ?? .clear
    }
    
    //MARK: - View Flipside
    static var MySViewFlipside: UIColor {
        return UIColor(named: "MSBlue") ?? .clear
    }
    
    static var MySLightViewFlipside: UIColor {
        return UIColor(named: "MySLightViewFlipside") ?? .clear
    }
    static var MySUltraLightViewFlipside: UIColor {
        return UIColor(named: "MySUltraLightViewFlipside") ?? .clear
    }
    static var MySFormBackground: UIColor {
        return UIColor(named: "MySFormBackground") ?? UIColor(red: 252/255.0, green: 252/255.0, blue: 252/255.0, alpha: 1.0)
    }
    static let MySSuperUltraLightViewFlipside = UIColor(red: 31/255.0, green: 33/255.0, blue: 36/255.0, alpha: 0.1)
    
    // MARK: - Purple
    static let MySChartPurple = UIColor(red: 193/255.0, green: 122/255.0, blue: 250/255.0, alpha: 1.0)
    
    // MARK: - Common
    static var MySViewWhiteBackground: UIColor {
        return UIColor(named: "MySViewWhiteBackground") ?? .clear
    }
    static var MySNavigationGradientBackgroundFirst: UIColor {
        return UIColor(named: "MSNavbar1") ?? .clear
    }
    static var MySNavigationGradientBackgroundSecond: UIColor {
        return UIColor(named: "MSNavbar3") ?? .clear
    }
    static var MySNavigationGradientBackgroundThird: UIColor {
        return UIColor(named: "MSNavbar3") ?? .clear
    }
    static var MySDefaultLabel: UIColor {
        return UIColor(named: "MySDefaultLabel") ?? .clear
    }
    static var MySGroupTableViewBackground: UIColor {
        return UIColor(named: "MySGroupTableViewBackground") ?? .clear
    }
    static var MySBlack: UIColor {
        return UIColor(named: "MySBlack") ?? .clear
    }
    static var MySWhite: UIColor {
        return UIColor(named: "MySWhite") ?? .clear
    }
    
    static var MySGroupCompanyFirstBackgroundParent: UIColor {
        return UIColor(named: "MySGroupCompanyFirstBackgroundParent") ?? .clear
    }
    
    static var MySGroupCompanyFirstBackgroundChild: UIColor {
        return UIColor(named: "MySGroupCompanyFirstBackgroundChild") ?? .clear
    }
    
    static var MySGroupCompanySecondBackgroundParent: UIColor {
        return UIColor(named: "MySGroupCompanySecondBackgroundParent") ?? .clear
    }
    
    static var MySGroupCompanySecondBackgroundChild: UIColor {
        return UIColor(named: "MySGroupCompanySecondBackgroundChild") ?? .clear
    }
    
    static var MySNavigationWhiteBackground: UIColor {
        return UIColor(named: "MySNavigationWhiteBackground") ?? .white
    }
    
    static var MySTabBarColor: UIColor {
        return UIColor(named: "MySTabBarColor") ?? .white
    }
    
    static var MySGroupCompanyFirstLine: UIColor {
        return UIColor(named: "MySGroupCompanyFirstLine") ?? .white
    }
    
    static var MySSwitchBackgroundBlue: UIColor {
        return UIColor(named: "MySSwitchBackgroundBlue") ?? .white
    }
    
    static var MySSwitchButtonBlue: UIColor {
        return UIColor(named: "MySSwitchButtonBlue") ?? .white
    }
        
    convenience init(hex: Int, alpha: Double = 1.0) {
        self.init(red: CGFloat((hex>>16)&0xFF)/255.0, green: CGFloat((hex>>8)&0xFF)/255.0, blue: CGFloat((hex)&0xFF)/255.0, alpha: CGFloat(255 * alpha) / 255)
    }
    
    convenience init(hexString: String, alpha: Double = 1.0) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (r, g, b) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (r, g, b) = (int >> 16, int >> 8 & 0xFF, int & 0xFF)
        default:
            (r, g, b) = (1, 1, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(255 * alpha) / 255)
    }
    
    func toHexString() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        
        getRed(&r, green: &g, blue: &b, alpha: &a)
        
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        
        return NSString(format:"#%06x", rgb) as String
    }
    
    func image(_ size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { rendererContext in
            self.setFill()
            rendererContext.fill(CGRect(origin: .zero, size: size))
        }
    }
    
    func lighterColor(_ percent : Double) -> UIColor {
        return colorWithBrightnessFactor(CGFloat(1 + percent))
    }
    
    func darkerColor(_ percent : Double) -> UIColor {
        return colorWithBrightnessFactor(CGFloat(1 - percent))
    }
    
    func colorWithBrightnessFactor(_ factor: CGFloat) -> UIColor {
        var hue : CGFloat = 0
        var saturation : CGFloat = 0
        var brightness : CGFloat = 0
        var alpha : CGFloat = 0
        
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return UIColor(hue: hue, saturation: saturation, brightness: brightness * factor, alpha: alpha)
        } else {
            return self
        }
    }
    
    static let LibertyColors: [UIColor] = [UIColor(red: 207/255.0, green: 248/255.0, blue: 246/255.0, alpha: 1.0),
                                           UIColor(red: 148/255.0, green: 212/255.0, blue: 212/255.0, alpha: 1.0),
                                           UIColor(red: 136/255.0, green: 180/255.0, blue: 187/255.0, alpha: 1.0),
                                           UIColor(red: 118/255.0, green: 174/255.0, blue: 175/255.0, alpha: 1.0),
                                           UIColor(red: 42/255.0, green: 109/255.0, blue: 130/255.0, alpha: 1.0)]
    
    static let JoyfulColor: [UIColor] = [UIColor(red: 217/255.0, green: 80/255.0, blue: 138/255.0, alpha: 1.0),
                                         UIColor(red: 254/255.0, green: 149/255.0, blue: 7/255.0, alpha: 1.0),
                                         UIColor(red: 254/255.0, green: 247/255.0, blue: 120/255.0, alpha: 1.0),
                                         UIColor(red: 106/255.0, green: 167/255.0, blue: 134/255.0, alpha: 1.0),
                                         UIColor(red: 53/255.0, green: 194/255.0, blue: 209/255.0, alpha: 1.0)]
    
    static let PastelColors: [UIColor] = [UIColor(red: 64/255.0, green: 89/255.0, blue: 128/255.0, alpha: 1.0),
                                          UIColor(red: 149/255.0, green: 165/255.0, blue: 124/255.0, alpha: 1.0),
                                          UIColor(red: 217/255.0, green: 184/255.0, blue: 162/255.0, alpha: 1.0),
                                          UIColor(red: 191/255.0, green: 134/255.0, blue: 134/255.0, alpha: 1.0),
                                          UIColor(red: 179/255.0, green: 48/255.0, blue: 80/255.0, alpha: 1.0)]
    
    static let ColorfulColors: [UIColor] = [UIColor(red: 193/255.0, green: 37/255.0, blue: 82/255.0, alpha: 1.0),
                                            UIColor(red: 255/255.0, green: 102/255.0, blue: 0/255.0, alpha: 1.0),
                                            UIColor(red: 245/255.0, green: 199/255.0, blue: 0/255.0, alpha: 1.0),
                                            UIColor(red: 106/255.0, green: 150/255.0, blue: 31/255.0, alpha: 1.0),
                                            UIColor(red: 179/255.0, green: 100/255.0, blue: 53/255.0, alpha: 1.0)]
    
    static let VordiplomColors: [UIColor] = [UIColor(red: 192/255.0, green: 255/255.0, blue: 140/255.0, alpha: 1.0),
                                             UIColor(red: 255/255.0, green: 247/255.0, blue: 140/255.0, alpha: 1.0),
                                             UIColor(red: 255/255.0, green: 208/255.0, blue: 140/255.0, alpha: 1.0),
                                             UIColor(red: 140/255.0, green: 234/255.0, blue: 255/255.0, alpha: 1.0),
                                             UIColor(red: 255/255.0, green: 140/255.0, blue: 157/255.0, alpha: 1.0)]
    
    static let MaterialColors: [UIColor] = [UIColor(hexString: "#2ecc71"),
                                            UIColor(hexString: "#f1c40f"),
                                            UIColor(hexString: "#e74c3c"),
                                            UIColor(hexString: "#3498db")]
}

