//
//  UINavigationBar.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

extension UINavigationBar {
    func setRadialGradientBackground(colors: [UIColor]) {
        var layerFrame = bounds
        layerFrame.size.height += self.frame.origin.y
        
        let radialGradientLayer = RadialGradientLayer()
        radialGradientLayer.frame = layerFrame
        radialGradientLayer.colors = colors
        
        setBackgroundImage(radialGradientLayer.createLayerImage(), for: UIBarMetrics.default)
    }
}
