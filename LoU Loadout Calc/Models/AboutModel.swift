//  AboutModel.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/8/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

struct AboutModel {
    
    let iconImage: UIImage
    let title:     String
    
    static let list: [AboutModel] = [
        AboutModel(iconImage: LastOfUsImages.AboutIcons.settingsIcon!, title: "SETTINGS"),
        AboutModel(iconImage: LastOfUsImages.AboutIcons.developerIcon!, title: "DEVELOPED BY PERUCAN"),
        AboutModel(iconImage: LastOfUsImages.AboutIcons.lightBulb!, title: "OG CREATOR'S TWITTER"),
//        AboutModel(iconImage: LastOfUsImages.AboutIcons.appVersionIcon, title: "APP VERSION:  \(appVersion())")
    ]
}

func appVersion() -> String {
    guard let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else { return "something went wrong" }

    return appVersion
}
