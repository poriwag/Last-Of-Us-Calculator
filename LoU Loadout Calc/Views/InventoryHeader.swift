//
//  InventoryHeader.swift
//  LoU Loadout Calc
//
//  Created by George Garcia on 5/1/20.
//  Copyright © 2020 GeeTeam. All rights reserved.
//

import UIKit

class InventoryHeader: UICollectionReusableView {
    let sectionHeaderLabel = LoUTitleLabel(textAlignment: .left, fontSize: 35)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHeader()
    }
    
    fileprivate func setupHeader() {
        addSubview(sectionHeaderLabel)
        sectionHeaderLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: .none, trailing: trailingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
