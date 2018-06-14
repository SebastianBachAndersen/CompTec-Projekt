import Foundation


var farmPlaceholder = Farm()
var combatPlaceholder = Combat()
var loginPlaceholder = Login()

//Farm.pickFarm()
var login = Login()
print("username")
var username = readLine()!
print("Write your password")
var password = readLine()!
login.login(username: username, password: password)
sleep(1)
var playername = login.userpass
print(playername)
var dude = readLine()

combatPlaceholder.currentPlayer.name = username

print("")

farmPlaceholder.pickFarm()


