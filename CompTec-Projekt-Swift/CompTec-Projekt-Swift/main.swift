import Foundation


var farmPlaceholder = Farm()
var combatPlaceholder = Combat()
var loginPlaceholder = Login()

print("Write your username")
var username = readLine()!
print("Write your password")
var password = readLine()!
loginPlaceholder.login(username: username, password: password)

combatPlaceholder.currentPlayer.name = username

print("")

farmPlaceholder.pickFarm()
