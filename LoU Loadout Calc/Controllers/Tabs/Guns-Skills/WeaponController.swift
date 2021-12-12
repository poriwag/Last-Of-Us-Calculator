//  WeaponController.swift
//  LoU Loadout Calc
//  Created by George Garcia on 5/3/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class WeaponController: UIViewController {
    
    lazy var equalsSignImageView: UIImageView = {
        let imageView   = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "icon-equal-sign")?.withRenderingMode(.alwaysOriginal)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let line1 = CustomLineView()
    let line2 = CustomLineView()
    
    let itemImageView  = LoUImageView(frame: .zero)

    let itemTitleLabel  = LoUTitleLabel(textAlignment: .left, fontSize: 20)
    let itemPointsLabel = LoUTitleLabel(textAlignment: .left, fontSize: 16)
    let itemDetailsLabel    = LoUTitleLabel(textAlignment: .left, fontSize: 14)
    
    let fireRateLabel    = LoUTitleLabel(textAlignment: .left, fontSize: 16)
    let fireRateBars     = UIImageView()
    let reloadSpeedLabel = LoUTitleLabel(textAlignment: .left, fontSize: 16)
    let reloadSpeedBars  = UIImageView()
    let damageLabel      = LoUTitleLabel(textAlignment: .left, fontSize: 16)
    let damageBars       = UIImageView()
    let accuracyLabel    = LoUTitleLabel(textAlignment: .left, fontSize: 16)
    let accuracyBars     = UIImageView()
    
    let bodyDamageLabel = LoUTitleLabel(textAlignment: .left, fontSize: 16)
    let headDamageLabel = LoUTitleLabel(textAlignment: .left, fontSize: 16)
    let destroyArmorLabel = LoUTitleLabel(textAlignment: .left, fontSize: 16)
    let executionLabel = LoUTitleLabel(textAlignment: .left, fontSize: 16)

    
    lazy var topStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [itemTitleLabel, itemPointsLabel, itemDetailsLabel])
//        stackView.addBackgroundColor(color: .green)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var middleStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [fireRateLabel, fireRateBars, reloadSpeedLabel, reloadSpeedBars, damageLabel, damageBars, accuracyLabel, accuracyBars])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var bottomStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [bodyDamageLabel, headDamageLabel, destroyArmorLabel, executionLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    fileprivate func setupUI() {
        setBGImageForVC()
        configureTopAreaOfVC()
        configureTopStackView()
        configureMiddleStackView()
        configureBottomStackView()
    }
    
    fileprivate func configureTopAreaOfVC() {
        view.addSubviews(equalsSignImageView, itemImageView)
        equalsSignImageView.centerXInSuperview()
        equalsSignImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: .none, bottom: .none, trailing: .none, padding: .init(top: 16, left: 0, bottom: 0, right: 0), size: .init(width: 30, height: 20))
        
        itemImageView.centerXInSuperview()
        itemImageView.anchor(top: equalsSignImageView.topAnchor, leading: .none, bottom: .none, trailing: .none, padding: .init(top: 40, left: 0, bottom: 0, right: 0), size: .init(width: 70, height: 70))
    }
    
    fileprivate func configureTopStackView() {
        view.addSubviews(topStackView, line1)
        topStackView.centerXInSuperview()
        topStackView.anchor(top: itemImageView.bottomAnchor, leading: view.leadingAnchor, bottom: .none, trailing: view.trailingAnchor, padding: .init(top: 20, left: 10, bottom: 0, right: 10))
        
        line1.anchor(top: topStackView.bottomAnchor, leading: view.leadingAnchor, bottom: .none, trailing: view.trailingAnchor, padding: .init(top: 20, left: 10, bottom: 0, right: 10), size: .init(width: 0, height: 2))
    }
    
    fileprivate func configureMiddleStackView() {
        view.addSubview(middleStackView)
        
        fireRateLabel.text    = "Fire Rate"
        reloadSpeedLabel.text = "Reload Speed"
        damageLabel.text      = "Damage"
        accuracyLabel.text    = "Accuracy"
        
        middleStackView.centerXInSuperview()
        middleStackView.anchor(top: line1.bottomAnchor, leading: view.leadingAnchor, bottom: .none, trailing: view.trailingAnchor, padding: .init(top: 20, left: 10, bottom: 0, right: 10))
    }
    
    fileprivate func configureBottomStackView() {
        view.addSubviews(line2, bottomStackView)
        
        line2.anchor(top: middleStackView.bottomAnchor, leading: view.leadingAnchor, bottom: .none, trailing: view.trailingAnchor, padding: .init(top: 20, left: 10, bottom: 0, right: 10), size: .init(width: 0, height: 2))
        
        bottomStackView.anchor(top: line2.bottomAnchor, leading: view.leadingAnchor, bottom: .none, trailing: view.trailingAnchor, padding: .init(top: 20, left: 10, bottom: 0, right: 10))
    }
}
