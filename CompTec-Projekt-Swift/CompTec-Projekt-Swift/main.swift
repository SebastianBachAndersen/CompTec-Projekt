import Foundation

// Variables to contain copies of their respective classes, used to call functions from all across the project, effectively creating a single file, from where the entire game is controlled.
var farmPlaceholder = Farm()
var combatPlaceholder = Combat()
var loginPlaceholder = Login()

    var username = ""
    var password = ""

// password og username check
while password == ""{
    print("Type your username")
    username = readLine()!
    print("Type your password")
    password = readLine()!
    loginPlaceholder.login(username: username, password: password)
    sleep(1)
    let playername = loginPlaceholder.userpass
    
    if playername != ""{
        break
    }
    password = ""
}


combatPlaceholder.currentPlayer.name = username




func gameStart() {

print("Welcome to the world of Run Escape, \(combatPlaceholder.currentPlayer.name)!")
print("There's so many places to visit here!")

farmPlaceholder.pickFarm()

}

gameStart()
