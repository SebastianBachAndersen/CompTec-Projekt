import Foundation


var farm = Farm()

var login = Login()

print("username")
var username = readLine()!
print("password")
var password = readLine()!
login.login(username: username, password: password)



farm.pickFarm()
