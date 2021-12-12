//  PerksController.swift
//  LoU Loadout Calc
//  Created by George Garcia on 5/19/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class PerksController: UIViewController {
    
    lazy var equalsSignImageView: UIImageView = {
        let imageView   = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "icon-equal-sign")?.withRenderingMode(.alwaysOriginal)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
