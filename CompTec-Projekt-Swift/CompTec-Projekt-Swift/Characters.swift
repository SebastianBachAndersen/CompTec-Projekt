//
//  Characters.swift
//  CompTec-Projekt-Swift
//
//  Created by elev on 13/06/2018.
//  Copyright © 2018 Sebastian Bach Andersen. All rights reserved.
//

import Foundation

// The Base/Superclass, has all the basic variables, that all the below classes need.
class Character {
    var type : String
    var currentHealth : Int
    var combatLevel : Int = 1
    
    init(type : String, currentHealth : Int, combatLevel : Int) {
        self.type = type
        self.currentHealth = currentHealth
        self.combatLevel = combatLevel
    }
    var attackPower : Int {return 10 * combatLevel / 2 + 5}
}

// The Player class, unique from the Enemy classes, has a name, and combatLevelxp, making it possible to level up your combat level, to eventually take on the Dragons.

class Player : Character {
    var name : String
    var combatLevelxp : Int = 0
    
    init(name : String, combatLevelxp : Int) {
        self.name = name
        self.combatLevelxp = combatLevelxp
        super.init(type: "Player", currentHealth: 100, combatLevel: 1)
    }
}

// Enemy classes, all created to change the values of currentEnemy, to the corresponding choice made in pickFarm(). All are subclasses of Character.

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
    }
    
    func spewFire() {
        
    }
}


