//
//  Combat.swift
//  CompTec-Projekt-Swift
//
//  Created by elev on 14/06/2018.
//  Copyright © 2018 Sebastian Bach Andersen. All rights reserved.
//

import Foundation

var farm = Farm()

// The Combat class. It
class Combat {
    
    var xpWhenKilled = 20
    
    init(xpWhenKilled: Int = 20) {
        self.xpWhenKilled = xpWhenKilled
    }
    
    public var currentPlayer = Player(name: "", combatLevelxp: 0)
    public var currentEnemy : Character = Cow()

    
/*
 --------------------------------------------------------------Combat Functions Below-------------------------------------------------------------------------------
 */

// Function for starting combat. Used when a Farm place is picked.
    func startFight() {
        Thread.sleep(forTimeInterval: 1)
        print("It is your turn! What are you going to do?")
        Thread.sleep(forTimeInterval: 1)
        print("Write 0 for help")
        Thread.sleep(forTimeInterval: 1)
        
        let fight = readLine()
        
// Switch to let the player decide what he/she/it wants to do.
        switch fight {
        
        case "0"?:
            print("Write 1 to Attack")
            Thread.sleep(forTimeInterval: 1)
            print("Write 2 to Run Escape")
            Thread.sleep(forTimeInterval: 1)
            startFight()
            
        case "1"?:
            attack()
            enemyTurn()
            
        case "2"?:
            run()
            
        default:
            print("You cant just stand there and do nothing!")
            Thread.sleep(forTimeInterval: 1)
            startFight()
        }
        
    }
    
    // This function decreases the Enemy's HP, checks to see if the Enemy is dead, and if not, the "enemyTurn()" function is called, to then restart the entire Fight function
    func attack() {
        
        currentEnemy.currentHealth = currentEnemy.currentHealth - currentPlayer.attackPower
        Thread.sleep(forTimeInterval: 1)
        print("You attacked the \(currentEnemy.type), You dealt \(currentPlayer.attackPower) Damage!")
        Thread.sleep(forTimeInterval: 1)
        print("The \(currentEnemy.type) now has \(currentEnemy.currentHealth) HP left!")
        Thread.sleep(forTimeInterval: 1)
        
        
        if currentEnemy.currentHealth <= 0
        {
            print("You killed the \(currentEnemy)")
            Thread.sleep(forTimeInterval: 1)
            win()
            Thread.sleep(forTimeInterval: 1)
        }
        else if currentPlayer.currentHealth <= 0
        {
            lose()
        }
        else
        {
            enemyTurn()
            startFight()
        }
        
    }
    
    // This function lets you escape a battle, in case your characters combatlevel is too low to handle the fighting.
    
    func run() {
        Thread.sleep(forTimeInterval: 1)
        print("You sucessfully ran away from the \(currentEnemy)")
        Thread.sleep(forTimeInterval: 1)
        lose()
    }
    
    // This function lets the Enemy strike back at you, whenever you attack it, effectively creating a turn based combat system.
    func enemyTurn() {
        currentPlayer.currentHealth = currentPlayer.currentHealth - currentEnemy.attackPower
        Thread.sleep(forTimeInterval: 1)
        print("The \(currentEnemy.type) dealt \(currentEnemy.attackPower) to you!")
        Thread.sleep(forTimeInterval: 1)
        
        if currentPlayer.currentHealth >= 0 {
            lose()
        }
    }
    
    // This function is called when the Enemy's HP drops to or below 0. You then win the fight, heal back up, and gain some xp, which when you have enough, will increase your combat level. It then calls the "pickFarm()" function, to let you grind up to beat those nasty Dragons!
    func win() {
        Thread.sleep(forTimeInterval: 1)
        print("You won the battle!")
        Thread.sleep(forTimeInterval: 1)
        currentPlayer.combatLevelxp = currentPlayer.combatLevelxp + 10
        currentPlayer.currentHealth = 100
        print("You rest, and heal back to full HP. Your HP is now \(currentPlayer.currentHealth)")
        if currentPlayer.combatLevelxp >= 100 {
            currentPlayer.combatLevel = currentPlayer.combatLevel + 1
        }
        farmPlaceholder.pickFarm()
    }
    
    // This function is called either when your Characters HP drops to or below 0, or when you run. It is designed in such a way, that you don't lose the game even if you run, only if you actually died.
    
    func lose() {
        Thread.sleep(forTimeInterval: 1)
        print("You lost the battle!")
        Thread.sleep(forTimeInterval: 1)
        if currentPlayer.currentHealth <= 0 {
            print("You died! Restarting game!")
            gameStart()
        }
        else {
            farmPlaceholder.pickFarm()
        }
        
    }
    
}
