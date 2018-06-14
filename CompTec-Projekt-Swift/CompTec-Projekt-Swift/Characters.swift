//
//  Characters.swift
//  CompTec-Projekt-Swift
//
//  Created by elev on 13/06/2018.
//  Copyright © 2018 Sebastian Bach Andersen. All rights reserved.
//

import Foundation

class Character {
    var type : String
    var currentHealth : Int
    var combatLevel : Int = 1
    var attackPower : Int
    
    init(type : String, currentHealth : Int, combatLevel : Int, attackPower : Int) {
        self.type = type
        self.currentHealth = 100 * combatLevel / 2 + 50
        self.combatLevel = combatLevel
        self.attackPower = 10 * combatLevel / 2 + 5
        
    }
    
}

class Player : Character {
    let name : String? = readLine()
    
}


class Cow : Character {
    
}

class Dragon : Character {
    
    func Enrage () {
        attackPower = attackPower + (attackPower/100*30)
    }
    
    func spewFire() {
        
    }
}
