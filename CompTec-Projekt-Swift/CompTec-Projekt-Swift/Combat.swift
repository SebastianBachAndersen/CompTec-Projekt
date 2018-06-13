import Foundation

class combat {
    
    var xpWhenKilled = 0
    
    init(xpWhenKilled: Int) {
        self.xpWhenKilled = xpWhenKilled

    }
/*
 --------------------------------------------------------------Combat Functions Below-------------------------------------------------------------------------------
 */

    var currentPlayer = Player(type: "Cow", currentHealth: 100, combatLevel: 2, attackPower: <#T##Int#>)
    
    func startFight() {
        
        var currentEnemy = Cow(type: "Cow", currentHealth: 40, combatLevel: 1, attackPower: <#T##Int#>)
    
    
    func attack() {
        
        print("You attacked the \(currentEnemy)")
        
        if currentEnemy.currentHealth <= 0
        {
            print("You killed the \(currentEnemy)")
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
        <#function body#>
    }
    
    func win() {
        print("You won the battle!")
    }
    func lose() {
        print("You lost the battle!")
    }
    
    }
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
