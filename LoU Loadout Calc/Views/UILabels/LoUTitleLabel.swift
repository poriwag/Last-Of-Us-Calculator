//  LoUTitleLabel.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/8/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class LoUTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureLabel()
    }
    
    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont(name: LoUFonts.textDIN, size: fontSize)
    }
    
    private func configureLabel() {
        textColor                 = .white
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor        = 0.9
        numberOfLines             = 2
        lineBreakMode             = .byTruncatingTail
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
