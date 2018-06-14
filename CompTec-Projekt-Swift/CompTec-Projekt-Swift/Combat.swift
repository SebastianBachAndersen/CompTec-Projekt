//
//  Combat.swift
//  CompTec-Projekt-Swift
//
//  Created by elev on 14/06/2018.
//  Copyright © 2018 Sebastian Bach Andersen. All rights reserved.
//

import Foundation

// holds a copy of farm to call the farm classes function.
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
        print("It is your turn! What are you going to do?")
        print("Write 0 for help")
        
        let fight = readLine()
        
// Switch to let the player decide what he/she/it wants to do.
        switch fight {
        
        case "0"?:
            print("Write 1 to Attack")
            print("Write 2 to Run Escape")
            startFight()
            
        case "1"?:
            attack()
            enemyTurn()
            
        case "2"?:
            run()
            
        default:
            print("You cant just stand there and do nothing!")
            startFight()
        }
        
    }
    
    // This function decreases the Enemy's HP, checks to see if the Enemy is dead, and if not, the "enemyTurn()" function is called, to then restart the entire Fight function
    func attack() {
        
        currentEnemy.currentHealth = currentEnemy.currentHealth - currentPlayer.attackPower
        
        print("You attacked the \(currentEnemy.type), You dealt \(currentPlayer.attackPower) Damage!")
        
        print("The \(currentEnemy.type) now has \(currentEnemy.currentHealth) HP left!")
        
        
        
        if currentEnemy.currentHealth <= 0
        {
            print("You killed the \(currentEnemy)")
            
            win()
            
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
        
        print("You sucessfully ran away from the \(currentEnemy)")
        
        lose()
    }
    
    // This function lets the Enemy strike back at you, whenever you attack it, effectively creating a turn based combat system.
    func enemyTurn() {
        currentPlayer.currentHealth = currentPlayer.currentHealth - currentEnemy.attackPower
        
        print("The \(currentEnemy.type) dealt \(currentEnemy.attackPower) to you!")
        
        
        if currentPlayer.currentHealth <= 0 {
            lose()
        }
    }
    
    // This function is called when the Enemy's HP drops to or below 0. You then win the fight, heal back up, and gain some xp, which when you have enough, will increase your combat level. It then calls the "pickFarm()" function, to let you grind up to beat those nasty Dragons!
    func win() {
        
        print("You won the battle!")
        
        currentPlayer.combatLevelxp = currentPlayer.combatLevelxp + 10
        currentPlayer.currentHealth = 100
        print("You rest, and heal back to full HP. Your HP is now \(currentPlayer.currentHealth)")
        print("You gained 10 XP! Your current XP is \(currentPlayer.combatLevelxp)")
        if currentPlayer.combatLevelxp >= 100 {
            currentPlayer.combatLevel = currentPlayer.combatLevel + 1
            print("You leveled up! Your combat level is now \(currentPlayer.combatLevel)")
        }
        farmPlaceholder.pickFarm()
    }
    
    // This function is called either when your Characters HP drops to or below 0, or when you run. It is designed in such a way, that you don't lose the game even if you run, only if you actually died.
    
    func lose() {
        
        print("You lost the battle!")
        
        if currentPlayer.currentHealth <= 0 {
            print("You died! Restarting game!")
            gameStart()
        }
        else {
            farmPlaceholder.pickFarm()
        }
        
    }
    
}
