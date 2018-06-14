//
//  Farms.swift
//  CompTec-Projekt-Swift
//
//  Created by elev on 13/06/2018.
//  Copyright © 2018 Sebastian Bach Andersen. All rights reserved.
//

import Foundation

class Farm  {
    
    func pickFarm() {
        print("What place would you like to visit?")
        print("Type 1 for Cow Farm")
        print("Type 2 for Goblin Den")
        print("Type 3 for Dragon Nest")
        
        let farmPick = readLine()
        
        switch farmPick {
            
        case "1"?:
            print("You are now at the Cow Farm")
            print("New Quest! 'Kill 1 Cow!'")
            
        case "2"?:
            print("You are inside at the Goblin Den")
            print("New Quest! 'Kill 1 Goblin!'")
        case "3"?:
            print("You are now inside the Dragon Nest")
            print("New Quest! 'Kill 1 Dragon!'")
            
        default:
            print("You have to choose a place to go!")
            pickFarm()
            
        }
    }
}








