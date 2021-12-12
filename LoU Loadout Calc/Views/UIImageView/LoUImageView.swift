//  LoUImageView.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/8/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class LoUImageView: UIImageView {
    
    let placeHolderImage = LastOfUsImages.placeholder
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds      = true // you want the image to be inside the imageview
        image              = placeHolderImage
        contentMode        = .scaleAspectFit
        //contentMode        = .scaleAspectFill
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
