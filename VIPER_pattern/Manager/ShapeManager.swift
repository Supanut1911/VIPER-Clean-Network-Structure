//
//  ShapeManager.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class ShapeManager: NSObject {
    
    static let shared = ShapeManager()
    
    func calArea(w: Int, h: Int) -> Int {
        return w * h
    }
}
