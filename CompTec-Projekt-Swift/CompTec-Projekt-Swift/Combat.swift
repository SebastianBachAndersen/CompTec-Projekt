import Foundation

class combat {
    var hp = 0
    var attackDamage = 0
    var xpWhenKilled = 0
    var combatLevel = 0
    
    init(hp: Int, attackDamage: Int, xpWhenKilled: Int, combatLevel: Int) {
        self.hp = hp
        self.attackDamage = attackDamage
        self.xpWhenKilled = xpWhenKilled
        self.combatLevel = combatLevel
    }
    
    func startFight() {
        let fight = readLine()
        switch fight {
            
        case "1"?:
            attack()
        case "2"?:
            run()

        default:
            <#code#>
        }
    }
    
    func attack() {
        print("You attacked the \(curentEnemy)")
        
        if currentEnemy.hp =< 0
        {
            print("You killed the \(currentEnemy)")
        }
        else if 
        {
            
        }
        lose()
        
    }
    func run() {
        print("You sucessfully ran away from the \(currentEnemy)")
        
        lose()
    }
    func win() {
        print("You won the battle!")
    }
    func lose() {
        print("You lost the battle!")
    }
    

}
