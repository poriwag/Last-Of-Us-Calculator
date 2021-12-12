//  SettingsCell.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/11/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class SettingsCell: UITableViewCell {
    
    let padding: CGFloat = 12
    
    static let reuseCellID = "SettingsCell"
    lazy var titleLabel    = LoUTitleLabel(textAlignment: .left, fontSize: 22)
    
    lazy var soundSwitch: UISwitch = {
        let toggle = UISwitch(frame: .zero)
        toggle.onTintColor = .lightGray
        toggle.tintColor = .darkGray
        return toggle
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
    }

    fileprivate func configureCell() {
        addSubviews(titleLabel)
        
        accessoryView   = soundSwitch
        backgroundColor = LoUColors.backgroundCellColor
        selectionStyle  = .none
        
        titleLabel.centerYInSuperview()
        titleLabel.anchor(top: .none, leading: leadingAnchor, bottom: .none, trailing: trailingAnchor, padding: .init(top: 0, left: 24, bottom: 0, right: padding), size: .init(width: 0, height: 40))
        
        soundSwitch.addTarget(self, action: #selector(handleToggle), for: .valueChanged)
    }
    
    func set(settings: SettingsModel) {
        titleLabel.text = settings.title
    }
    
    @objc func handleToggle(_ sender: UISwitch) {
        
        soundSwitch = sender
        
        if soundSwitch.isOn {
            print("Sound switch is on")
        } else {
            print("Sound switch is off..")
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
