//  UIViewController+Ext.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit
import SafariServices

extension UIViewController {
    
    func setBGImageForVC() {
        
        let imageView         = UIImageView(frame: .zero)
        imageView.image       = LastOfUsImages.BackgroundImage.backgroundPortrait!
        imageView.contentMode = .scaleToFill
        
        imageView.translatesAutoresizingMaskIntoConstraints = false

//        let backgroundImage         = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image       = UIImage(named: "background-portrait")
//        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        
        view.insertSubview(imageView, at: 0)
        imageView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
        
        //self.view.backgroundColor = UIColor(patternImage: LastOfUsImages.BackgroundImage.backgroundPortrait!)
    }
    
    func configureNavigationBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont(name: LoUFonts.logoFont, size: 46) ?? UIFont.systemFont(ofSize: 46), NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    func checkFamilyFonts() {
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font Names: \(names)")
        }
    }
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemBackground
        present(safariVC, animated: true)
    }
    
    func presentCreatorsTwitter() {

        guard let url = URL(string: "https://twitter.com/freddybushboy") else { return}
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredBarTintColor = .systemBackground
        present(safariVC, animated: true)
    }
}
