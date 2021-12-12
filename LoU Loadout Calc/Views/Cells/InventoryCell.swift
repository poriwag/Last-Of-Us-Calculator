//  InventoryCell.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/30/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class InventoryCell: UICollectionViewCell {
    
    static let reuseID: String = "InventoryCell"
    
    let itemImageView = LoUImageView(frame: .zero)
    let titleLabel    = LoUTitleLabel(textAlignment: .center, fontSize: 16)

    let padding: CGFloat = 12
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    fileprivate func configure() {
        addSubviews(itemImageView, titleLabel)
        backgroundColor = LoUColors.backgroundCellColor
        layer.cornerRadius = 8
        
        itemImageView.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: .none, trailing: self.trailingAnchor, padding: .init(top: padding, left: padding, bottom: 0, right: padding))
        itemImageView.heightAnchor.constraint(equalTo: itemImageView.widthAnchor).isActive = true
        
        titleLabel.anchor(top: itemImageView.bottomAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: .init(top: 12, left: 12, bottom: 0, right: 12))
        //titleLabel.constrainHeight(constant: 20)
        titleLabel.constrainWidth(constant: 20)
    }
    
    
    func setWeapons(item: Weapon) {
        itemImageView.image = item.image
        titleLabel.text     = item.name
    }
    
    func setPerks(perk: Perk) {
        itemImageView.image = perk.perkImage
        titleLabel.text     = perk.perkName
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
