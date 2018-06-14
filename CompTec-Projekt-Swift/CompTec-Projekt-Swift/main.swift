import Foundation

var farmPlaceholder = Farm()
var combatPlaceholder = Combat()
var loginPlaceholder = Login()

//Farm.pickFarm()
    var username = ""
    var password = ""

    //login class
    var login = Login()
// password og username cheak
while password == ""{
    print("Type your username")
    if username == readLine()! {
        print("Type your password")
        if password == readLine()! {
            loginPlaceholder.login(username: username, password: password)
            combatPlaceholder.currentPlayer.name = username
        }
    }
    sleep(1)
    var playername = login.userpass
    if playername != ""{
        break
    }
    password = ""
}



combatPlaceholder.currentPlayer.name = username




func gameStart() {

print("Welcome to the world of Run Escape \(combatPlaceholder.currentPlayer.name)!")
print("There's so many places to visit here!")

farmPlaceholder.pickFarm()

}

gameStart()
