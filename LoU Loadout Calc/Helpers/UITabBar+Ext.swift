//  UITabBar+Ext.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/8/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

extension UITabBar {
    
    static func setupCustomTabbar() {
        UITabBar.appearance().backgroundImage   = UIImage()
        UITabBar.appearance().shadowImage       = UIImage()
        UITabBar.appearance().clipsToBounds     = true
    }
}
