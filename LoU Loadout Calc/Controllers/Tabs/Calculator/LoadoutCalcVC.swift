//  LoadoutCalcVC.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class LoadoutCalcVC: UIViewController {
    
    // array lists
    var main_list           = [LoadoutCalcModel]()
    let init_list           = LoadoutCalcModel.init_list
    
    let tableview           = UITableView()
    let button_reset        = UIButton()
    let button_rand         = UIButton()
    let button_share        = UIButton()
    
    lazy var pointLabel     = LoUTitleLabel(textAlignment: .center, fontSize: 20)
    var total_points        = 0
    var flag                = -1 //select option
                                //0: handgun
                                //1: firearm
                                //2...6: perk
                                //7: purchasable

        
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //initialize lists
        main_list = LoadoutCalcModel.init_list
        
        //initialize point text
        setPoint()
        
        setupEntireUI()
    }
    
    private func setupEntireUI() {
        setBGImageForVC()
        configureNavigationBar()
        addButtons()
        configureTableView()
        
    }
    
    fileprivate func setPoint()
    {
        pointLabel.text = String(self.total_points) + "/13 points"
    }
    
    fileprivate func configureTableView() {
        self.view.addSubview(tableview)
        tableview.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        
        tableview.backgroundColor = .clear

        tableview.delegate = self
        tableview.dataSource = self
        tableview.removeExcessCells()
        tableview.rowHeight = 80
        tableview.register(CalcCell.self, forCellReuseIdentifier: CalcCell.reuseCellID)
        
    }
    
    
    private func addButtons()
    {
        //add buttons above table view
        
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableview.frame.width, height: 100))
        
        //reset
        button_reset.frame = CGRect(x: 20, y: 10, width: 30, height: 30)
        button_reset.addTarget(self, action: #selector(resetAction), for: .touchUpInside)
        button_reset.setImage(LastOfUsImages.CalculatorIcons.resetIcon, for: .normal)
        button_reset.backgroundColor = .clear
      
        //random
        button_rand.frame = CGRect(x: 70, y: 10, width: 30, height: 30)
        button_rand.addTarget(self, action: #selector(randomAction), for: .touchUpInside)
        button_rand.setImage(LastOfUsImages.CalculatorIcons.randomIcon, for: .normal)
        button_rand.backgroundColor = .clear
      
        //share
        button_share.frame = CGRect(x: 120, y: 10, width: 30, height: 30)
        button_share.addTarget(self, action: #selector(shareAction), for: .touchUpInside)
        button_share.setImage(LastOfUsImages.CalculatorIcons.shareIcon, for: .normal)
        button_share.backgroundColor = .clear
        
        //point label
        pointLabel.backgroundColor = .clear
        
        headerView.addSubview(button_reset)
        headerView.addSubview(button_rand)
        headerView.addSubview(button_share)
        headerView.addSubview(pointLabel)
        
        //add current point header
        pointLabel.translatesAutoresizingMaskIntoConstraints = false
        pointLabel.topAnchor.constraint(equalTo: button_reset.bottomAnchor, constant: 5).isActive = true
        pointLabel.leadingAnchor.constraint(equalTo: button_reset.leadingAnchor).isActive = true
        pointLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        
        self.tableview.tableHeaderView = headerView
       
        
        
    }

    @objc func resetAction(sender: UIButton!) {
      print("Reset Button  tapped")
      // reset
        self.main_list = self.init_list
        self.flag = -1
        self.total_points = 0
        self.setPoint()
        self.tableview.reloadData()
    
    }
    @objc func randomAction(sender: UIButton!) {
      print("Random Button  tapped")
      handleRandom()
    }
    @objc func shareAction(sender: UIButton!) {
      print("Share Button  tapped")
    
    }
    
    fileprivate func handleRandom()
    {
        self.total_points = 0
        for item in 0..<main_list.count
        {
            if item == 0
            {
                //handgun
                let size = LoadoutCalcModel.handgun_list.count
                let rand = Int.random(in: 0..<size)
                self.main_list[item] = LoadoutCalcModel.handgun_list[rand]
                self.total_points += LoadoutCalcModel.handgun_list[rand].point
            }
            else if item == 1
            {
                //large firearm
                let size = LoadoutCalcModel.largeFirearm_list.count
                let rand = Int.random(in: 0..<size)
                self.main_list[item] = LoadoutCalcModel.largeFirearm_list[rand]
                self.total_points += LoadoutCalcModel.largeFirearm_list[rand].point
            }
            else if item==7
            {
                //purchasable weapon
                let size = LoadoutCalcModel.purchasable_list.count
                let rand = Int.random(in: 0..<size)
                self.main_list[item] = LoadoutCalcModel.purchasable_list[rand]
                self.total_points += LoadoutCalcModel.purchasable_list[rand].point
            }
            else
            {
                //perk
                let size = LoadoutCalcModel.perk_list.count
                let rand = Int.random(in: 0..<size)
                self.main_list[item] = LoadoutCalcModel.perk_list[rand]
                self.total_points += LoadoutCalcModel.perk_list[rand].point
            }
        }
        self.flag = -1
        self.setPoint()
        self.tableview.reloadData()
        
    }

}

extension LoadoutCalcVC: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // when item is selected
        
        handleItemClicked(index: indexPath.row)
    }
    func handleItemClicked(index : Int)
    {
        print("Item ",index, " is Clicked")
        
        self.flag = index
    
        let defaults = UserDefaults.standard
        let controller = WeaponPerkListVC()
        controller.delegate = self
        
        
        if index == 0
        {
            // handgun view
            defaults.set("Handgun", forKey: "OnMenuSelected")
        }
        else if index == 1
        {
            // large firarm view
            defaults.set("Large Firearm", forKey: "OnMenuSelected")
        }
        else if index == main_list.count-1
        {
            // purchasable view
            defaults.set("Purchasable Weapon", forKey: "OnMenuSelected")
        }
        else
        {
            // Perk view
            defaults.set("Perk", forKey: "OnMenuSelected")
        }
        
        navigationController?.pushViewController(controller, animated: true)
       
        
    }
 
}
// MARK: UITableViewDelegate
extension LoadoutCalcVC : UITableViewDataSource
{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.main_list.count
        //return LoadoutCalcModel.init_list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell             = tableView.dequeueReusableCell(withIdentifier: CalcCell.reuseCellID) as! CalcCell
        let calcArray       =  self.main_list[indexPath.row]
        cell.set(calc: calcArray)
        
        return cell
    }

}
extension LoadoutCalcVC : selectedHandgunDelegate
{
    func selectedHandgun(selected_weapon: LoadoutCalcModel)
    {
        self.navigationController?.popViewController(animated: true)
        let item = self.main_list[self.flag]
        if item.point == 0
        {
            // update total points
            self.total_points += selected_weapon.point
        }
        else
        {
            // update total point
            self.total_points = self.total_points - item.point + selected_weapon.point
        }
        //update selected weapon
        self.main_list[self.flag] = selected_weapon
          
        print("Update Point: ",self.total_points)
        self.setPoint()
        self.tableview.reloadData()
    }
}
