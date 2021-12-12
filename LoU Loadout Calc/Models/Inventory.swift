//  Inventory.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/26/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

struct Weapon {
    var name:          String
    var image:         UIImage
    var fireRate:      UIImage
    var reloadSpeed:   UIImage
    var damage:        UIImage
    var accuracy:      UIImage
    var points:        Int
    var details:       String
    var damageDetails: DamageDetails
}

struct DamageDetails {
    var bodyDamage:   String
    var headDamage:   String
    var destroyArmor: String
    var execution:    String
}

struct Perk {
    var perkName:    String
    var perkImage:   UIImage
    var perkPoints:  Int
    var perkDetails: String
    
    var level2Perk:  Level2
    var level3Perk:  Level3?
    
    struct Level2 {
        var perkName:    String
        var perkImage:   UIImage
        var perkPoints:  Int
        var perkDetails: String
    }
    
    struct Level3 {
        var perkName:    String
        var perkImage:   UIImage
        var perkPoints:  Int
        var perkDetails: String
    }
}

let weaponsList: [Weapon] = [
    Weapon(name: "Revolver", image: WeaponImages.revolver, fireRate: Bars.fourBars, reloadSpeed: Bars.threeBars, damage: Bars.fiveBars, accuracy: Bars.sixBars, points: 0, details: "Deals a solid punch with good accuracy when still", damageDetails: DamageDetails(bodyDamage: "35%", headDamage: "70%", destroyArmor: "2 shots", execution: "2 shots")),
    
    Weapon(name: "9mm Pistol", image: WeaponImages.nineMM, fireRate: Bars.sevenBars, reloadSpeed: Bars.sixBars, damage: Bars.twoBars, accuracy: Bars.fourBars, points: 0, details: "A light handgun with a high rate of fire and ample ammunition", damageDetails: DamageDetails(bodyDamage: "20%", headDamage: "60%", destroyArmor: "3 shots", execution: "3 shots")),
    
    Weapon(name: "Shorty", image: WeaponImages.shorty, fireRate: Bars.sevenBars, reloadSpeed: Bars.sixBars, damage: Bars.twoBars, accuracy: Bars.fiveBars, points: 1, details: "A wide spread and downs enemies is teo shots up close", damageDetails: DamageDetails(bodyDamage: "60%", headDamage: "80%", destroyArmor: "1 shot", execution: "1 shot")),
    
    Weapon(name: "Enforcer", image: WeaponImages.enforcer, fireRate: Bars.sixBars, reloadSpeed: Bars.sixBars, damage: Bars.fourBars, accuracy: Bars.sevenBars, points: 1, details: "A versatile pistol with great range and accuracy", damageDetails: DamageDetails(bodyDamage: "25%", headDamage: "55%", destroyArmor: "2 shots", execution: "2 shots")),
    
    Weapon(name: "Burst Pistol", image: WeaponImages.burstPistol, fireRate: Bars.sevenBars, reloadSpeed: Bars.sixBars, damage: Bars.threeBars, accuracy: Bars.threeBars, points: 1, details: "Three round burst pistol that downs enemies in five shots", damageDetails: DamageDetails(bodyDamage: "22%", headDamage: "44%", destroyArmor: "3 shots", execution: "3 shots")),
    
    Weapon(name: "Tactical Shotgun", image: WeaponImages.tactical, fireRate: Bars.fiveBars, reloadSpeed: Bars.threeBars, damage: Bars.sixBars, accuracy: Bars.sevenBars, points: 3, details: "Three round burst pistol that downs enemies in five shots", damageDetails: DamageDetails(bodyDamage: "55%", headDamage: "55%", destroyArmor: "1 shot", execution: "1 shot")),
    
    Weapon(name: "Frontier Rifle", image: WeaponImages.frontier, fireRate: Bars.threeBars, reloadSpeed: Bars.twoBars, damage: Bars.sevenBars, accuracy: Bars.sevenBars, points: 2, details: "Lever action rifle that downs enemies in two shots", damageDetails: DamageDetails(bodyDamage: "66%", headDamage: "92%", destroyArmor: "1 shot", execution: "1 shot")),
    
    Weapon(name: "Semi-Auto Rifle", image: WeaponImages.semiRifle, fireRate: Bars.fiveBars, reloadSpeed: Bars.fourBars, damage: Bars.fiveBars, accuracy: Bars.sevenBars, points: 2, details: "A reliable mid-range killer", damageDetails: DamageDetails(bodyDamage: "34%", headDamage: "75%", destroyArmor: "2 shots", execution: "2 shots")),
    
    Weapon(name: "Full-Auto Rifle", image: WeaponImages.fullAutoRifle, fireRate: Bars.fourBars, reloadSpeed: Bars.fourBars, damage: Bars.twoBars, accuracy: Bars.fiveBars, points: 2, details: "A fully automatic all purpose rifle", damageDetails: DamageDetails(bodyDamage: "20%", headDamage: "50%", destroyArmor: "3 shots", execution: "3 shots")),
    
    Weapon(name: "Burst Rifle", image: WeaponImages.burstRifle, fireRate: Bars.sixBars, reloadSpeed: Bars.fourBars, damage: Bars.threeBars, accuracy: Bars.fourBars, points: 2, details: "A fully automatic all purpose rifle", damageDetails: DamageDetails(bodyDamage: "22%", headDamage: "80%", destroyArmor: "3 shots", execution: "3 shots")),
    
    Weapon(name: "Full-Auto Rifle", image: WeaponImages.fullAutoRifle, fireRate: Bars.fourBars, reloadSpeed: Bars.fourBars, damage: Bars.twoBars, accuracy: Bars.fiveBars, points: 2, details: "A fully automatic all purpose rifle", damageDetails: DamageDetails(bodyDamage: "20%", headDamage: "50%", destroyArmor: "3 shots", execution: "3 shots")),
    
    Weapon(name: "Hunting Rifle", image: WeaponImages.huntingRifle, fireRate: Bars.twoBars, reloadSpeed: Bars.twoBars, damage: Bars.eightBars, accuracy: Bars.nineBars, points: 2, details: "Two shots to down and pinpoint accurate at range", damageDetails: DamageDetails(bodyDamage: "70%", headDamage: "100%", destroyArmor: "1 shot", execution: "1 shot")),
    
    Weapon(name: "Bow", image: WeaponImages.bow, fireRate: Bars.threeBars, reloadSpeed: Bars.fourBars, damage: Bars.sixBars, accuracy: Bars.sevenBars, points: 3, details: "A silent killer. You won't show up on the enemy minimap when firing", damageDetails: DamageDetails(bodyDamage: "55%", headDamage: "100%", destroyArmor: "1 shot", execution: "1 shot")),
    
    Weapon(name: "Scoped Semi-Auto", image: WeaponImages.scopedSemiRifle, fireRate: Bars.fiveBars, reloadSpeed: Bars.fourBars, damage: Bars.fiveBars, accuracy: Bars.sevenBars, points: 2, details: "Scoped version of the Semi-Auto Rifle", damageDetails: DamageDetails(bodyDamage: "34%", headDamage: "75%", destroyArmor: "2 shots", execution: "2 shots")),
    
    Weapon(name: "Scoped Full-Auto", image: WeaponImages.scopedFullRifle, fireRate: Bars.fourBars, reloadSpeed: Bars.fourBars, damage: Bars.twoBars, accuracy: Bars.sixBars, points: 2, details: "Scoped version of the Full-Auto Rifle", damageDetails: DamageDetails(bodyDamage: "20%", headDamage: "50%", destroyArmor: "3 shots", execution: "3 shots")),
    
    Weapon(name: "Scoped Burst-Rifle", image: WeaponImages.scopedBurstRifle, fireRate: Bars.sixBars, reloadSpeed: Bars.fourBars, damage: Bars.threeBars, accuracy: Bars.fiveBars, points: 2, details: "Scoped version of the Burst Rifle", damageDetails: DamageDetails(bodyDamage: "22%", headDamage: "60%", destroyArmor: "3 shots", execution: "3 shots")),
    
    Weapon(name: "Variable Rifle", image: WeaponImages.variableRifle, fireRate: Bars.sixBars, reloadSpeed: Bars.fourBars, damage: Bars.fourBars, accuracy: Bars.eightBars, points: 2, details: "Scoped version of the Burst Rifle", damageDetails: DamageDetails(bodyDamage: "31%", headDamage: "60%", destroyArmor: "2 shots", execution: "2 shots"))
]

let perksList: [Perk] = [
    
    Perk(perkName: "Agility", perkImage: PerkImages.Agility.agility1, perkPoints: 2, perkDetails: "Crouch walk very quickly", level2Perk: Perk.Level2(perkName: "Agility 2", perkImage: PerkImages.Agility.agility2, perkPoints: 4, perkDetails: "You are nearly impossible to hear when moving. Walk, climb and crouch walk very quickly")),
    
    Perk(perkName: "Awareness", perkImage: PerkImages.Awareness.awareness1, perkPoints: 1, perkDetails: "Enemy nametags remain on screen for 5 seconds when you take damage", level2Perk: Perk.Level2(perkName: "Awareness 2", perkImage: PerkImages.Awareness.awareness2, perkPoints: 3, perkDetails: "Enemy nametags appear at twice the normal distance and remain on screen when you take damage for 10 seconds")),
    
    Perk(perkName: "Bomb Expert", perkImage: PerkImages.Bomb.bomb1, perkPoints: 2, perkDetails: "Smoke bombs have a very short fuse", level2Perk: Perk.Level2(perkName: "Bomb Expert 2", perkImage: PerkImages.Bomb.bomb1, perkPoints: 2, perkDetails: "Placed bombs, thrown smoke bombs and thrown bombs have an even shorter fuse"), level3Perk: Perk.Level3(perkName: "Bomb Expert 3", perkImage: PerkImages.Bomb.bomb3, perkPoints: 5, perkDetails: "You are immune to the stun of your own smoke bomb. Placed bombs, thrown smoke bombs and thrown bombs have a very short fuse.")),
    
    Perk(perkName: "Brawler", perkImage: PerkImages.Brawler.brawler1, perkPoints: 1, perkDetails: "Craft modded weapons in half the time and gain 10 health back with each melee hit", level2Perk: Perk.Level2(perkName: "Brawler 2", perkImage: PerkImages.Brawler.brawler2, perkPoints: 3, perkDetails: "Craft modded weapons in half the time, they have an additional hit and gain 10 health back with each melee hit")),
    
    Perk(perkName: "Second Chance", perkImage: PerkImages.Chance.chanceRes, perkPoints: 1, perkDetails: "Get a free health kit when you have none and have taken more than half damage from an enemy. Get 25% additional starting ammo after two or more consecutive deaths without getting a down or execution up to a maximum of 50%.", level2Perk: Perk.Level2(perkName: "Second Chance 2", perkImage: PerkImages.Brawler.brawler2, perkPoints: 2, perkDetails: "Get a free health kit when you have none and have taken more than half damage from an enemy. Get 50% additional starting ammo and 25% cheaper armor after two or more consecutive deaths without getting a down or execution, up to a maximum of 100% additional ammo and 50% cheaper armor.")),
    
    Perk(perkName: "Collector", perkImage: PerkImages.Collector.collector1, perkPoints: 3, perkDetails: "Craft modded weapons in half the time and gain 10 health back with each melee hit", level2Perk: Perk.Level2(perkName: "Brawler 2", perkImage: PerkImages.Brawler.brawler2, perkPoints: 3, perkDetails: "Craft modded weapons in half the time, they have an additional hit and gain 10 health back with each melee hit")),
    
    Perk(perkName: "Covert Training", perkImage: PerkImages.Covert.covert1, perkPoints: 2, perkDetails: "Start with a shiv on each spawn", level2Perk: Perk.Level2(perkName: "Covert Training 2", perkImage: PerkImages.Covert.covert2, perkPoints: 4, perkDetails: "You won't show up on the enemy's listen mode when crouch walking and start with a shiv on each spawn"), level3Perk: Perk.Level3(perkName: "Covert Training 3", perkImage: PerkImages.Covert.covert3, perkPoints: 5, perkDetails: "You can't be marked, won't show up on the enemy's listen mode when crouch walking and start with a shiv on each spawn")),
    
    Perk(perkName: "Crafter", perkImage: PerkImages.Crafter.crafter1, perkPoints: 2, perkDetails: "Craft 75% Faster", level2Perk: Perk.Level2(perkName: "Crafter 2", perkImage: PerkImages.Crafter.crafter2, perkPoints: 4, perkDetails: "Craft 75% faster and for every 3 items you craft you will reveive a giftbox. Equip this giftbox using UP and you can give it to an ally. They will reveive a random item"), level3Perk: Perk.Level3(perkName: "Crafter 3", perkImage: PerkImages.Crafter.crafter3, perkPoints: 6, perkDetails: "Craft 75% faster and for every 2 items you craft you will reveive a giftbox. Equip this giftbox using UP and you can give it to an ally. They will reveive a random item")),
    
    Perk(perkName: "Damage Marker", perkImage: PerkImages.Damage.damage1, perkPoints: 2, perkDetails: "Any damage dealt marks the target who receives the damage", level2Perk: Perk.Level2(perkName: "Damage Marker 2", perkImage: PerkImages.Damage.damage2, perkPoints: 4, perkDetails: "Earn double the parts for marking enemies and any damage dealt marks the target who receives the damage")),
    
    Perk(perkName: "Explosion Expert", perkImage: PerkImages.ExplosionExpert.ee1, perkPoints: 1, perkDetails: "Grenade Launcher and bomb radius is increased by 20%. Molotov radius is increased by 10%", level2Perk: Perk.Level2(perkName: "Explosion Expert 2", perkImage: PerkImages.ExplosionExpert.ee2, perkPoints: 3, perkDetails: "Grenade Launcher and bomb radius is increased by 40%. Molotov radius is increased by 20%")),
    
    Perk(perkName: "Executioner", perkImage: PerkImages.Executioner.executioner1, perkPoints: 1, perkDetails: "Earn double the parts for shiv kills", level2Perk: Perk.Level2(perkName: "Executioner 2", perkImage: PerkImages.Executioner.executioner2, perkPoints: 3, perkDetails: "Earn 50% more parts for special executions, get an extra shiv use every time you craft a shiv and earn double the parts for shiv kills"), level3Perk: Perk.Level3(perkName: "Executioner 3", perkImage: PerkImages.Executioner.executioner3, perkPoints: 4, perkDetails: "Get 2 extra shiv uses every time you craft a shiv and earn double the parts for shiv kills, special executions and interrogations")),
    
    Perk(perkName: "First Aid Training", perkImage: PerkImages.FirstAidTraining.fat1, perkPoints: 2, perkDetails: "Use health kits 75% faster", level2Perk: Perk.Level2(perkName: "First Aid Training 2", perkImage: PerkImages.FirstAidTraining.fat2, perkPoints: 4, perkDetails: "Use health kits 75% faster and can heal injured teammates. When looking at an injured teammate you can hold X to slowly heal them, 10 health every 2 seconds"), level3Perk: Perk.Level3(perkName: "First Aid Training 3", perkImage: PerkImages.FirstAidTraining.fat3, perkPoints: 6, perkDetails: "Use health kits 75% faster and can heal injured teammates. When looking at an injured teammate you can hold X to slowly heal them, 20 health every 2 seconds")),
    
    Perk(perkName: "Fortitude", perkImage: PerkImages.Fortitude.fort1, perkPoints: 1, perkDetails: "Bleed out time is increased by 25%, slightly increased downed crawling speed and earn 25 parts after healing more than half health", level2Perk: Perk.Level2(perkName: "Fortitude 2", perkImage: PerkImages.Fortitude.fort2, perkPoints: 3, perkDetails: "Start with an extra health pack, earn 50 parts for healing more than half health and carry an extra health pack. Bleed out time is increased by 50% and downed health is increased along with much faster downed crawling speed")),
    
    Perk(perkName: "Gunslinger", perkImage: PerkImages.Gunslinger.gunsling1, perkPoints: 2, perkDetails: "Pistol ammo is increased by 50% at spawn (this does not stack with weapon upgrades)", level2Perk: Perk.Level2(perkName: "Gunslinger 2", perkImage: PerkImages.Gunslinger.gunsling2, perkPoints: 4, perkDetails: "Pistol ammo is doubled at spawn (this does not stack with weapon upgrades)")),
    
    Perk(perkName: "Hawk-eyed", perkImage: PerkImages.Hawk.hawk1, perkPoints: 2, perkDetails: "Marks last 3 seconds longer. Aim at an enemy and click R3 to mark", level2Perk: Perk.Level2(perkName: "Hawk-eyed 2", perkImage: PerkImages.Hawk.hawk2, perkPoints: 3, perkDetails: "Marks last 3 seconds longer and marked enemies glow. Aim at an enemy and click R3 to mark"), level3Perk: Perk.Level3(perkName: "Hawk-eyed 3", perkImage: PerkImages.Hawk.hawk3, perkPoints: 4, perkDetails: "Marks last 3 seconds longer, marked enemies glow and enemies within a short distance of your target are also marked. Aim at an enemy and click R3 to mark")),
    
    Perk(perkName: "Jack of all Trades", perkImage: PerkImages.JackOfAllTrades.jackRes, perkPoints: 5, perkDetails: "8 points of skills in one. Contains:\nBrawler 1\nCovert Training 1\nSharp Ears 1\nStrategist 1\nCrafter 1", level2Perk: Perk.Level2(perkName: "Jack of All Trades 2", perkImage: PerkImages.JackOfAllTrades.jack2, perkPoints: 10, perkDetails: "16 points of skills in one. Contains:\nExplosion Expert 1\nReviver 1\nBrawler 2\nCovert Training 1\nSharp Ears 1\nFirst Aid Training 1\nScavenger 1\nStrategist 1\nCrafter 1\nSecond Chance 1")),
    
    Perk(perkName: "Lethal Efficiency", perkImage: PerkImages.LethalEfficiency.lethal1, perkPoints: 2, perkDetails: "Do a faster low-to-the-ground neck-snap whenperforming a Special Execution", level2Perk: Perk.Level2(perkName: "Lethal Efficiency 2", perkImage: PerkImages.LethalEfficiency.lethal2, perkPoints: 3, perkDetails: "Do an even faster low-to-the-ground neck-snap whenperforming a Special Execution")),
    
    Perk(perkName: "Lone Wolf", perkImage: PerkImages.LoneWolf.loneWolfRes, perkPoints: 2, perkDetails: "Lone wolf activates when you are far from your teammates (or they are downed). When Lone Wolf is active you get:\nAgility 2\nSharpshooter 2\n30 bonus parts whenever you down or execute an enemy", level2Perk: Perk.Level2(perkName: "Lone Wolf 2", perkImage: PerkImages.LoneWolf.loneWolf2, perkPoints: 3, perkDetails: "Lone wolf activates when you are far from your teammates (or they are downed). When Lone Wolf is active you get:\nAgility 2\nSharpshooter 2\nSharp Ears 3\n60 bonus parts whenever you down or execute an enemy")),
    
    Perk(perkName: "Lucky Break", perkImage: PerkImages.LuckyBreak.luckyRes, perkPoints: 2, perkDetails: "When you open a supply box you get: 50% more pistol ammo", level2Perk: Perk.Level2(perkName: "Lucky Break 2", perkImage: PerkImages.LuckyBreak.lucky2, perkPoints: 3, perkDetails: "When you open a supply box you get:\n50% more pistol ammo\n25% More large firearm ammo\nMinimum of at least two crafting ingredients"), level3Perk: Perk.Level3(perkName: "Lucky Break 3", perkImage: PerkImages.LuckyBreak.lucky3, perkPoints: 4, perkDetails: "When you open a supply box you get:\n50% more pistol ammo\n25% More large firearm ammo\nMinimum of at least three crafting ingredients")),
    
    Perk(perkName: "Marathon Runner", perkImage: PerkImages.MarathonRunner.marathon1, perkPoints: 1, perkDetails: "Sprint for 15% longer and sprint regenerates 15% faster", level2Perk: Perk.Level2(perkName: "Marathon Runner 2", perkImage: PerkImages.MarathonRunner.marathon2, perkPoints: 3, perkDetails: "Sprint for 30% longer and sprint regenerates 30% faster")),
    
    Perk(perkName: "Pistol Auto Zoom", perkImage: PerkImages.PistolAutoZoom.paz1, perkPoints: 1, perkDetails: "Zoom in while aiming a 9mm, Revolver, Enforcer or Burst Pistol", level2Perk: Perk.Level2(perkName: "Pistol Auto Zoom 2", perkImage: PerkImages.PistolAutoZoom.paz2, perkPoints: 2, perkDetails: "Zoom in further while aiming a 9mm, Revolver, Enforcer or Burst Pistol")),
    
    Perk(perkName: "Reviver", perkImage: PerkImages.Reviver.reviver1, perkPoints: 1, perkDetails: "Revive fallen teammates 30% faster and with 20 more health", level2Perk: Perk.Level2(perkName: "Reviver 2", perkImage: PerkImages.Reviver.reviver2, perkPoints: 3, perkDetails: "Revive fallen teammates 45% faster and with 25 more health and get 25% more parts from revives"), level3Perk: Perk.Level3(perkName: "Reviver 3", perkImage: PerkImages.Reviver.reviver3, perkPoints: 4, perkDetails: "Revive fallen teammates 55% faster and with 30 more health and get 50% more parts from revives")),
    
    Perk(perkName: "Scavenger", perkImage: PerkImages.Scavenger.scav1, perkPoints: 2, perkDetails: "Enemies drop 50% more ammo", level2Perk: Perk.Level2(perkName: "Scavenger 2", perkImage: PerkImages.Scavenger.scav2, perkPoints: 4, perkDetails: "Automatically pick up ammo from kills and enemies drop double the ammo"), level3Perk: Perk.Level3(perkName: "Scavenger 3", perkImage: PerkImages.Scavenger.scav3, perkPoints: 5, perkDetails: "Enemies sometime drop a random crafting item and always drop double ammo. Automatically pick up ammo and supplies from kills")),
    
    Perk(perkName: "Sharp Ears", perkImage: PerkImages.SharpEars.sharp1, perkPoints: 1, perkDetails: "The listen mode meter regenerates 15% faster and you can stay in listen mode 20% longer", level2Perk: Perk.Level2(perkName: "Sharp Ears 2", perkImage: PerkImages.SharpEars.sharp2, perkPoints: 2, perkDetails: "The listen mode meter regenerates 30% faster and you can stay in listen mode 20% longer"), level3Perk: Perk.Level3(perkName: "Sharp Ears 3", perkImage: PerkImages.SharpEars.sharp3, perkPoints: 3, perkDetails: "Move quickly while in listen mode, enter listen mode more quickly, the meter regenerates 35% faster and you can stay in listen mode 30% longer")),
    
    Perk(perkName: "Sharpshooter", perkImage: PerkImages.SharpShooter.ss1, perkPoints: 2, perkDetails: "Scope sway reduced by 25% and damage wobble reduced by 20%", level2Perk: Perk.Level2(perkName: "Sharpshooter 2", perkImage: PerkImages.SharpShooter.ss2, perkPoints: 4, perkDetails: "Scope sway reduced by 37% and damage wobble reduced by 35%. Get 15 health back for each headshot"), level3Perk: Perk.Level3(perkName: "Sharpshooter 3", perkImage: PerkImages.SharpShooter.ss3, perkPoints: 5, perkDetails: "Scope sway reduced by 50% and damage wobble reduced by 65%. Get 25 health back for each headshot")),
    
    Perk(perkName: "Strategist", perkImage: PerkImages.Strategist.strat1, perkPoints: 1, perkDetails: "Know when you've been marked", level2Perk: Perk.Level2(perkName: "Strategist 2", perkImage: PerkImages.Strategist.strat2, perkPoints: 4, perkDetails: "Know when you've been marked and see nearby enemies on the radar"), level3Perk: Perk.Level3(perkName: "Strategist 3", perkImage: PerkImages.Strategist.strat3, perkPoints: 5, perkDetails: "Know when you've been marked, see nearby enemies on the radar and can choose an ally to respawn on. You will be able to respawn several seconds early"))
]


