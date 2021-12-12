//  CustomUIView.swift
//  LoU Loadout Calc
//  Created by George Garcia on 5/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class CustomLineView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    fileprivate func configure() {
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
