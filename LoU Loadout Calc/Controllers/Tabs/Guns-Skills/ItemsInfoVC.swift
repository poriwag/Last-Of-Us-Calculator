//  ItemsInfoVC.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class ItemsInfoVC: UIViewController {
        
    var collectionView: UICollectionView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setupEntireUI()
    }
    
    fileprivate func setupEntireUI() {
        setBGImageForVC()
        configureCollectionView()
        configureNavigationBar()
    }
    
    fileprivate func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UIHelper.createThreeColumnFlowLayout(in: view))
        view.addSubview(collectionView)
        collectionView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        collectionView.backgroundColor = .clear
        collectionView.delegate = self
        collectionView.dataSource = self

        collectionView.register(InventoryCell.self, forCellWithReuseIdentifier: InventoryCell.reuseID)
        collectionView.register(InventoryHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header")
    }
    
}

extension ItemsInfoVC: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionHeader {
            
            let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as! InventoryHeader
            
            if indexPath.section == 0 {
                sectionHeader.sectionHeaderLabel.text = "Weapons"
            } else {
                sectionHeader.sectionHeaderLabel.text = "Perks"
            }
            return sectionHeader
        } else {
            return UICollectionReusableView()
        }
    }
}

extension ItemsInfoVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 10)
    }
}

extension ItemsInfoVC: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return weaponsList.count
        case 1:
            return perksList.count
        default:
            return 0
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InventoryCell.reuseID, for: indexPath) as! InventoryCell
        
        switch indexPath.section {
            case 0: cell.setWeapons(item: weaponsList[indexPath.row])
            default: cell.setPerks(perk: perksList[indexPath.row])
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let destinationController = WeaponController()
        
        switch indexPath.section {
        case 0:
            destinationController.itemTitleLabel.text = weaponsList[indexPath.item].name
            destinationController.itemImageView.image = weaponsList[indexPath.item].image
            destinationController.itemPointsLabel.text = "\(weaponsList[indexPath.item].points) points"
            destinationController.itemDetailsLabel.text = weaponsList[indexPath.item].details
            
            destinationController.fireRateBars.image = weaponsList[indexPath.item].fireRate
            destinationController.reloadSpeedBars.image = weaponsList[indexPath.item].reloadSpeed
            destinationController.damageBars.image = weaponsList[indexPath.item].damage
            destinationController.accuracyBars.image = weaponsList[indexPath.item].accuracy
            destinationController.bodyDamageLabel.text = "Body Damage: " + weaponsList[indexPath.item].damageDetails.bodyDamage
            destinationController.headDamageLabel.text = "Head Damage: " + weaponsList[indexPath.item].damageDetails.headDamage
            destinationController.destroyArmorLabel.text = "Destroy Armor: " + weaponsList[indexPath.item].damageDetails.destroyArmor
            destinationController.executionLabel.text = "Execution: " + weaponsList[indexPath.item].damageDetails.execution
            
        default:
            destinationController.itemTitleLabel.text = perksList[indexPath.item].perkName
            destinationController.itemImageView.image = perksList[indexPath.item].perkImage
        }
        
        present(destinationController, animated: true)
    }

}
