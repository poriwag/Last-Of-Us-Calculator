//
//  CalcCell.swift
//  LoU Loadout Calc
//
//  Created by Hao Lam on 12/8/20.
//  Copyright © 2020 GeeTeam. All rights reserved.
//

import UIKit

class CalcCell: UITableViewCell {
    
    static let reuseCellID = "AboutCell"
    let padding: CGFloat   = 12

    
    lazy var cellImageView  = LoUImageView(frame: .zero)
    lazy var titleLabel     = LoUTitleLabel(textAlignment: .center, fontSize: 20)
    lazy var pointLabel     = LoUTitleLabel(textAlignment: .left, fontSize: 20)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
    }
    
    private func configureCell() {
        
        
        addSubviews(cellImageView, titleLabel,pointLabel)
        
        accessoryType   = .disclosureIndicator
        backgroundColor = UIColor(red: 0.1647058824, green: 0.1568627451, blue: 0.1568627451, alpha: 0.5)
        selectionStyle  = .none
                
        cellImageView.centerYInSuperview()
        cellImageView.anchor(top: .none, leading: self.leadingAnchor, bottom: .none, trailing: .none, padding: .init(top: 0, left: padding, bottom: 0, right: 0), size: .init(width: 40, height: 40))
        
        titleLabel.centerYInSuperview()
        titleLabel.anchor(top: .none, leading: cellImageView.trailingAnchor, bottom: .none, trailing: .none, padding: .init(top: 0, left: 24, bottom: 0, right: padding), size: .init(width: 0, height: 40))
        
        pointLabel.centerYInSuperview()
        pointLabel.anchor(top: .none, leading: .none, bottom: .none, trailing: self.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: padding), size: .init(width: 0, height: 40))
       
    }
    
    func set(calc: LoadoutCalcModel) {
        titleLabel.text     = calc.title
        cellImageView.image = calc.iconImage
        pointLabel.text     = String(calc.point)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
