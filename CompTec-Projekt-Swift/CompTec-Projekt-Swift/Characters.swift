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
    
    init(type : String, currentHealth : Int, combatLevel : Int) {
        self.type = type
        self.currentHealth = currentHealth
        self.combatLevel = combatLevel
        self.attackPower = 10 * combatLevel / 2 + 5
        
    }
    
}

class Player : Character {
    let name : String? = readLine()
    init() {
        super.init(type: "Player", currentHealth: 100, combatLevel: 1)
    }
}

class Chicken : Character {
        init() {
            super.init(type: "Chicken", currentHealth: 20, combatLevel: 1)
    }
}

class Cow : Character {
    init() {
        super.init(type: "Cow", currentHealth: 75, combatLevel: 2)
    }
}


class Orc : Character {
    init() {
        super.init(type: "Orc", currentHealth: 150, combatLevel: 3)
    }
}


class Dragon : Character {
    
    init() {
        super.init(type: "Dragon", currentHealth: 250, combatLevel: 5)
    }
    
    func Enrage () {
        attackPower = attackPower + (attackPower/100*30)
    }
    
    func spewFire() {
        
    }
}


