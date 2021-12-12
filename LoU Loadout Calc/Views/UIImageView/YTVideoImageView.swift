//  YTVideoImageView.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/25/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class YTVideoImageView: UIImageView {
    
    let placeHolderImage = LastOfUsImages.placeholder

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    private func configure() {
        //layer.cornerRadius = 10
        clipsToBounds      = true
        image              = placeHolderImage
        contentMode        = .scaleAspectFill
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func downloadImage(from url: String) {
        NetworkManager.shared.downloadImage(from: url) { [weak self] (image) in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
