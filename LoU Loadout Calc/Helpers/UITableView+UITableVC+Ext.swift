//  UITableView+UITableVC+Ext.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/9/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

extension UITableViewController {
    
    func setBGImageForTableVC() {
        let backgroundImage = LastOfUsImages.BackgroundImage.backgroundPortrait!
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
//        let imageView = UIImageView(image: LastOfUsImages.BackgroundImage.backgroundPortrait!)
//        imageView.contentMode = .scaleAspectFill
//        tableView.backgroundView = imageView
//        self.view.backgroundColor = UIColor(patternImage: LastOfUsImages.BackgroundImage.backgroundPortrait!)
    }
}

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
    func setBGImageForTableVC() {
        let backgroundImage = LastOfUsImages.BackgroundImage.backgroundPortrait!
        let imageView = UIImageView(image: backgroundImage)
        self.backgroundView = imageView
//        let imageView = UIImageView(image: LastOfUsImages.BackgroundImage.backgroundPortrait!)
//        imageView.contentMode = .scaleAspectFill
//        tableView.backgroundView = imageView
//        self.view.backgroundColor = UIColor(patternImage: LastOfUsImages.BackgroundImage.backgroundPortrait!)
    }
}
