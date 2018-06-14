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
    print("username")
    username = readLine()!
    print("Write your password")
    password = readLine()!
    login.login(username: username, password: password)
    sleep(1)
    var playername = login.userpass
    if playername != ""{
        break
    }
    password = ""
}

var dude = readLine()

combatPlaceholder.currentPlayer.name = username

print("")

farmPlaceholder.pickFarm()


