//  SettingsVC.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/9/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class SettingsVC: UIViewController {
    
    let settingsTableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupEntireUI()
    }
    
    fileprivate func setupEntireUI() {
        setBGImageForVC()
        setupNavBar()
        configureSettingsTableView()
    }
    
    fileprivate func setupNavBar() {
        navigationController?.navigationBar.tintColor = .white
        navigationItem.title = "Settings"
    }
    
    fileprivate func configureSettingsTableView() {
        view.addSubview(settingsTableView)
        settingsTableView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        settingsTableView.backgroundColor = .clear
        settingsTableView.rowHeight  = 80
        settingsTableView.delegate   = self
        settingsTableView.dataSource = self
        settingsTableView.removeExcessCells()
        settingsTableView.register(SettingsCell.self, forCellReuseIdentifier: SettingsCell.reuseCellID)
    }
}

extension SettingsVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsModel.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = settingsTableView.dequeueReusableCell(withIdentifier: SettingsCell.reuseCellID) as! SettingsCell
        let settingsArray = SettingsModel.list[indexPath.row]
        cell.set(settings: settingsArray)
        return cell
    }
}

extension SettingsVC: UITableViewDelegate {
    
    
}
