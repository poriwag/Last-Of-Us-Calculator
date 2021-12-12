//
//  WeaponPerkListVC.swift
//  LoU Loadout Calc
//
//  Created by Hao Lam on 12/21/20.
//  Copyright © 2020 GeeTeam. All rights reserved.
//
// Modified by Billy Pak.

import UIKit
protocol selectedHandgunDelegate {
    func selectedHandgun(selected_weapon: LoadoutCalcModel)
}
class WeaponPerkListVC: UIViewController{
    
    var tableView = UITableView()
    var delegate: selectedHandgunDelegate?
    var main_list           = [LoadoutCalcModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableList()
        setupEntireUI()
    }
    
    fileprivate func setupTableList()
    {
        let option  = UserDefaults.standard.string(forKey: "OnMenuSelected")
        print ("Show Selected View: ",option ?? "")
        if option == "Handgun"
        {
            main_list = LoadoutCalcModel.handgun_list
        }
        else if option == "Large Firearm"
        {
            main_list = LoadoutCalcModel.largeFirearm_list
        }
        else if option == "Perk"
        {
            main_list = LoadoutCalcModel.perk_list
        }
        else if option == "Purchasable Weapon"
        {
            main_list = LoadoutCalcModel.purchasable_list
        }
        else
        {
            print("ERROR: Undefine selected option! Go back to main menu...")
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    fileprivate func setupEntireUI() {
        setBGImageForVC()
        configureNavigationBar()
        configureTableView()
        tableView.setBGImageForTableVC()
    }
    fileprivate func configureTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .clear
        tableView.rowHeight  = 80
        tableView.delegate   = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        tableView.removeExcessCells()
        tableView.register(CalcCell.self, forCellReuseIdentifier: CalcCell.reuseCellID)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
}
// MARK: UITableViewDelegate
extension WeaponPerkListVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selected_item = main_list[indexPath.row]
        print (selected_item.title + " is chosen")

        delegate?.selectedHandgun(selected_weapon: selected_item)
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        // selected item
//        let selected_item = main_list[indexPath.row]
//        print (selected_item.title + " is chosen")
//
//        delegate?.selectedHandgun(selected_weapon: selected_item)
//
//    }
}

//MARK: UITableViewDataSource
extension WeaponPerkListVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return main_list.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell             = tableView.dequeueReusableCell(withIdentifier: AboutCell.reuseCellID) as! CalcCell
        let calcArray       = main_list[indexPath.row]
        cell.set(calc: calcArray)
        return cell
    }
}
    
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return main_list.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell             = tableView.dequeueReusableCell(withIdentifier: AboutCell.reuseCellID) as! CalcCell
//        let calcArray       = main_list[indexPath.row]
//        cell.set(calc: calcArray)
//        return cell
//    }


