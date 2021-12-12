//  AboutVC.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit
import SafariServices

class AboutVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupEntireUI()
    }
    
    fileprivate func setupEntireUI() {
        setBGImageForTableVC()
        configureNavigationBar()
        configureTableView()
    }
    
    fileprivate func configureTableView() {
        tableView.rowHeight  = 80
        tableView.delegate   = self
        tableView.dataSource = self
        tableView.removeExcessCells()
        tableView.register(AboutCell.self, forCellReuseIdentifier: AboutCell.reuseCellID)
    }
}

// MARK: UITableViewDelegate
extension AboutVC {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            print("Tapped Settings")
            navigationController?.pushViewController(SettingsVC(), animated: true)
        case 1:
            print("Tapped Developer")
        case 2:
            presentCreatorsTwitter()
        case 3:
            print("App Version Tapped!")
        default:
            print("CELL DOES NOT EXIST")
        }
    }
}

//MARK: UITableViewDataSource
extension AboutVC {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AboutModel.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell             = tableView.dequeueReusableCell(withIdentifier: AboutCell.reuseCellID) as! AboutCell
        let aboutArray       = AboutModel.list[indexPath.row]
        cell.set(about: aboutArray)
        return cell
    }
}
