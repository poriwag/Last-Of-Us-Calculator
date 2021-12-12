//  MainTC.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/9/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class MainTC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabbarController()
    }
    
    fileprivate func configureTabbarController() {
        tabBar.tintColor               = #colorLiteral(red: 0.9225583076, green: 0.9140970111, blue: 0.8658707738, alpha: 1)
        tabBar.unselectedItemTintColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        UITabBar.setupCustomTabbar()
//        viewControllers = [createLoadoutNC(), createMyLoadoutNC(), createItemsInfoNC(), createMusicNC(), createAboutNC()]
        viewControllers = [createLoadoutNC(), createMyLoadoutNC(), createItemsInfoNC(), createAboutNC()]
    }
    
    private func createLoadoutNC() -> UINavigationController {
        let loadoutCalcVC        = LoadoutCalcVC()
        loadoutCalcVC.title      = "Loadout Calculator"
        loadoutCalcVC.tabBarItem = UITabBarItem(title: "Calculator", image: LastOfUsImages.TabBarIcon.calculator, tag: 0)
        return UINavigationController(rootViewController: loadoutCalcVC)
    }
    
    private func createMyLoadoutNC() -> UINavigationController {
        let myLoadoutVC        = MyLoadoutVC()
        myLoadoutVC.title      = "My Loadouts"
        myLoadoutVC.tabBarItem = UITabBarItem(title: "My Loadouts", image: LastOfUsImages.TabBarIcon.list, tag: 1)
        return UINavigationController(rootViewController: myLoadoutVC)
    }
    
    private func createItemsInfoNC() -> UINavigationController {
        let itemsInfoVC        = ItemsInfoVC()
        itemsInfoVC.title      = "Inventory"
        itemsInfoVC.tabBarItem = UITabBarItem(title: "Items", image: LastOfUsImages.TabBarIcon.info, tag: 2)
        return UINavigationController(rootViewController: itemsInfoVC)
    }
    
//    private func createMusicNC() -> UINavigationController {
//        let musicVC        = MusicVC()
//        musicVC.title      = "Music"
//        musicVC.tabBarItem = UITabBarItem(title: "Music", image: LastOfUsImages.TabBarIcon.music, tag: 3)
//        return UINavigationController(rootViewController: musicVC)
//    }
    
    private func createAboutNC() -> UINavigationController {
        let aboutVC        = AboutVC()
        aboutVC.title      = "About"
        aboutVC.tabBarItem = UITabBarItem(title: "About", image: LastOfUsImages.TabBarIcon.about, tag: 4)
        return UINavigationController(rootViewController: aboutVC)
    }
}

extension MainTC {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        Feedback.softFeedback.prepare()
        Feedback.softFeedback.impactOccurred()
    }
}
