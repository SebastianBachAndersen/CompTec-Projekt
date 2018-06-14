//
//  Combat.swift
//  CompTec-Projekt-Swift
//
//  Created by elev on 14/06/2018.
//  Copyright © 2018 Sebastian Bach Andersen. All rights reserved.
//

import Foundation

class Combat {
    
    var xpWhenKilled = 10
    
    init(xpWhenKilled: Int = 10) {
        self.xpWhenKilled = xpWhenKilled
    }
    
    public var currentPlayer = Player(name: "ulrik", combatLevelxp: 17231)
    public var currentEnemy : Character = Cow()

    
/*
 --------------------------------------------------------------Combat Functions Below-------------------------------------------------------------------------------
 */

    
    func startFight() {
        print("It is your turn! What are you going to do?")
        print("Write 0 for help")
        
        let fight = readLine()
        
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
    
    func run() {
        print("You sucessfully ran away from the \(currentEnemy)")
        lose()
    }
    
    
    func enemyTurn() {
        currentPlayer.currentHealth = currentPlayer.currentHealth - currentEnemy.attackPower
        print("The \(currentEnemy.type) dealt \(currentEnemy.attackPower) to you!")
    }
    
    
    func win() {
        print("You won the battle!")
        print("")
    }
    
    
    func lose() {
        print("You lost the battle!")
        
    }
    
    
    }
