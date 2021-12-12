//
//  LoadoutCalcModel.swift
//  LoU Loadout Calc
//
//  Created by Hao Lam on 12/8/20.
//  Copyright © 2020 GeeTeam. All rights reserved.
//

import UIKit

struct LoadoutCalcModel {
    
    let iconImage: UIImage
    let title:     String
    let point:     Int
    
    
    static let init_list: [LoadoutCalcModel] = [
        LoadoutCalcModel(iconImage: LastOfUsImages.CalculatorIcons.revolverIcon!, title: "REVOLVER", point: 0),
        LoadoutCalcModel(iconImage: LastOfUsImages.CalculatorIcons.nothingIcon!, title: "NO LARGE FIRE ARM", point: 0),
        LoadoutCalcModel(iconImage: LastOfUsImages.CalculatorIcons.nothingIcon!, title: "Nothing", point: 0),
        LoadoutCalcModel(iconImage: LastOfUsImages.CalculatorIcons.nothingIcon!, title: "Nothing",point: 0),
        LoadoutCalcModel(iconImage: LastOfUsImages.CalculatorIcons.nothingIcon!, title: "Nothing",point: 0),
        LoadoutCalcModel(iconImage: LastOfUsImages.CalculatorIcons.nothingIcon!, title: "Nothing",point: 0),
        LoadoutCalcModel(iconImage: LastOfUsImages.CalculatorIcons.nothingIcon!, title: "Nothing",point: 0),
        LoadoutCalcModel(iconImage: LastOfUsImages.CalculatorIcons.gearIcon!, title: "NO PURCHASABLE",point: 0)
    ]
    static let handgun_list: [LoadoutCalcModel] = [
        LoadoutCalcModel(iconImage: WeaponImages.revolver, title: "Revolver", point: 0),
        LoadoutCalcModel(iconImage: WeaponImages.nineMM, title: "9mm Pistol", point: 0),
        LoadoutCalcModel(iconImage: WeaponImages.shorty, title: "Shorty", point: 1),
        LoadoutCalcModel(iconImage: WeaponImages.burstPistol, title: "Burst Pistol",point: 1),
        LoadoutCalcModel(iconImage: WeaponImages.enforcer, title: "Enforcer",point: 1)
        ]
    static let largeFirearm_list: [LoadoutCalcModel] = [
        LoadoutCalcModel(iconImage: LastOfUsImages.CalculatorIcons.nothingIcon!, title: "No Large Firearm", point: 0),
        LoadoutCalcModel(iconImage: WeaponImages.tactical, title: "Tactical Shotgun", point: 3),
        LoadoutCalcModel(iconImage: WeaponImages.frontier, title: "Frontier Rifle", point: 2),
        LoadoutCalcModel(iconImage: WeaponImages.semiRifle, title: "Semi-Auto Rifle",point: 2),
        LoadoutCalcModel(iconImage: WeaponImages.fullAutoRifle, title: "Full-Auto Rifle", point: 2),
        LoadoutCalcModel(iconImage: WeaponImages.burstRifle, title: "Burst Rifle", point: 2),
        LoadoutCalcModel(iconImage: WeaponImages.huntingRifle, title: "Hunting Rifle",point: 2),
        LoadoutCalcModel(iconImage: WeaponImages.bow, title: "Bow",point: 3),
        LoadoutCalcModel(iconImage: WeaponImages.scopedSemiRifle, title: "Scoped Semi-Auto", point: 2),
        LoadoutCalcModel(iconImage: WeaponImages.scopedFullRifle, title: "Scoped Full-Auto", point: 2),
        LoadoutCalcModel(iconImage: WeaponImages.scopedBurstRifle, title: "Scoped Burst Rifle",point: 2),
        LoadoutCalcModel(iconImage: WeaponImages.variableRifle, title: "Variable Rifle",point: 2)
        ]
    static let perk_list: [LoadoutCalcModel] = [
        LoadoutCalcModel(iconImage: LastOfUsImages.CalculatorIcons.nothingIcon!, title: "Nothing", point: 0),
        LoadoutCalcModel(iconImage: PerkImages.PistolAutoZoom.paz1, title: "Pistol Auto-zoom", point: 1),
        LoadoutCalcModel(iconImage: PerkImages.ExplosionExpert.ee1, title: "Explosion Expert", point: 1),
        LoadoutCalcModel(iconImage: PerkImages.Reviver.reviver1, title: "Reviver",point: 1),
        LoadoutCalcModel(iconImage: PerkImages.Brawler.brawler1, title: "Brawler", point: 2),
        LoadoutCalcModel(iconImage: PerkImages.Covert.covert1, title: "Convert Training", point: 2),
        LoadoutCalcModel(iconImage: PerkImages.SharpEars.sharp1, title: "Sharp Ears",point: 1),
        LoadoutCalcModel(iconImage: PerkImages.Strategist.strat1, title: "Strategist",point: 1),
        LoadoutCalcModel(iconImage: PerkImages.Hawk.hawk1, title: "Hawk-eyed", point: 2),
        LoadoutCalcModel(iconImage: PerkImages.Crafter.crafter1, title: "Crafter", point: 2),
        LoadoutCalcModel(iconImage: PerkImages.FirstAidTraining.fat1, title: "First Aid Training",point: 2),
        LoadoutCalcModel(iconImage: PerkImages.SharpShooter.ss1, title: "Sharpshooter",point: 2),
        LoadoutCalcModel(iconImage: PerkImages.MarathonRunner.marathon1, title: "Marathon Runner",point: 1),
        LoadoutCalcModel(iconImage: PerkImages.Collector.collector1, title: "Collector", point: 3),
        LoadoutCalcModel(iconImage: PerkImages.Executioner.executioner1, title: "Executioner", point: 1),
        LoadoutCalcModel(iconImage: PerkImages.Scavenger.scav1, title: "Scavenger",point: 2),
        LoadoutCalcModel(iconImage: PerkImages.Damage.damage1, title: "Damage Maker",point: 2),
        LoadoutCalcModel(iconImage: PerkImages.Awareness.awareness1, title: "Awareness",point: 1),
        LoadoutCalcModel(iconImage: PerkImages.Fortitude.fort1, title: "Fortitude", point: 1),
        LoadoutCalcModel(iconImage: PerkImages.Gunslinger.gunsling1, title: "Gunslinger", point: 2),
        LoadoutCalcModel(iconImage: PerkImages.Bomb.bomb1, title: "Bomb Expert",point: 2),
        LoadoutCalcModel(iconImage: PerkImages.Agility.agility1, title: "Agility",point: 2),
        LoadoutCalcModel(iconImage: PerkImages.LoneWolf.loneWolf1, title: "Lone Wolf",point: 2),
        LoadoutCalcModel(iconImage: PerkImages.Chance.chance1, title: "Second Chance", point: 1),
        LoadoutCalcModel(iconImage: PerkImages.JackOfAllTrades.jack1, title: "Jack of All Trades", point: 5),
        LoadoutCalcModel(iconImage: PerkImages.LuckyBreak.lucky1, title: "Lucky Break", point: 2),
        LoadoutCalcModel(iconImage: PerkImages.LethalEfficiency.lethal1, title: "Lethal Efficiency",point: 2)
    ]
    static let purchasable_list: [LoadoutCalcModel] = [
        LoadoutCalcModel(iconImage: LastOfUsImages.CalculatorIcons.nothingIcon!, title: "No Purchasable", point: 0),
        LoadoutCalcModel(iconImage: WeaponImages.double, title: "Double Barrel", point: 1),
        LoadoutCalcModel(iconImage: WeaponImages.diablo, title: "El Diablo", point: 3),
        LoadoutCalcModel(iconImage: WeaponImages.assaultRifle, title: "Assault Rifle",point: 3),
        LoadoutCalcModel(iconImage: WeaponImages.shotgun, title: "Shotgun", point: 4),
        LoadoutCalcModel(iconImage: WeaponImages.sniper, title: "Military Sniper", point: 3),
        LoadoutCalcModel(iconImage: WeaponImages.flamethrower, title: "Flamethrower",point: 2),
        LoadoutCalcModel(iconImage: WeaponImages.machete, title: "Machete",point: 2),
        LoadoutCalcModel(iconImage: WeaponImages.spectre, title: "Spectre", point: 3),
        LoadoutCalcModel(iconImage: WeaponImages.grenadeLauncher, title: "Launcher", point: 3),
        LoadoutCalcModel(iconImage: WeaponImages.crossbow, title: "Crossbow",point: 3)
        
    ]
}

