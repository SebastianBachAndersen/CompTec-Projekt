//
//  Farms.swift
//  CompTec-Projekt-Swift
//
//  Created by elev on 13/06/2018.
//  Copyright © 2018 Sebastian Bach Andersen. All rights reserved.
//

import Foundation

var combat = Combat(xpWhenKilled: 10)

// The Farm Class. It's literally only here to cont
class Farm  {
    
    func pickFarm() {
        print("What place would you like to visit?")
        print("Type 1 for Chicken Farm")
        print("Type 2 for Cow Farm")
        print("Type 3 for Orc Wasteland")
        print("Type 4 for Dragon Nest")
        
        let farmPick = readLine()
        
        switch farmPick {
            
        case "1"?:
            print("You are now at the Chicken Farm")
            print("New Quest! 'Kill 1 Chicken!'")
            combat.currentEnemy = Chicken()
            combat.startFight()
            
        case "2"?:
            print("You are now at the Cow Farm")
            print("New Quest! 'Kill 1 Cow!'")
            combat.currentEnemy = Cow()
            combat.startFight()
            
        case "3"?:
            print("You are inside at the Orc Stronghold")
            print("New Quest! 'Kill 1 Orc!'")
            combat.currentEnemy = Orc()
            combat.startFight()
            
        case "4"?:
            print("You are now inside the Dragon Nest")
            print("New Quest! 'Kill 1 Dragon!'")
            combat.currentEnemy = Dragon()
            combat.startFight()
            
        default:
            print("You have to choose a place to go!")
            pickFarm()
            
        }
    }
}








