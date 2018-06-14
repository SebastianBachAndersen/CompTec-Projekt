import Foundation

var farmPlaceholder = Farm()
var combatPlaceholder = Combat()
var loginPlaceholder = Login()

print("Type your username")
if let username = readLine(){
    print("Type your password")
    if let password = readLine(){
        loginPlaceholder.login(username: username, password: password)
        print("Press 'Enter' to start game!")
        sleep(1)

        combatPlaceholder.currentPlayer.name = username
    }
}
var dude = readLine()



func gameStart() {

print("Welcome to the world of Run Escape \(combatPlaceholder.currentPlayer.name)!")
print("There's so many places to visit here!")

farmPlaceholder.pickFarm()

}

gameStart()
