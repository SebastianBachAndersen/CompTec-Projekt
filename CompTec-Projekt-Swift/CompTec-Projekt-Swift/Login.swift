//
//  Login.swift
//  CompTec-Projekt-Swift
//
//  Created by elev on 12/06/2018.
//  Copyright © 2018 Sebastian Bach Andersen. All rights reserved.
//

import Foundation


class Login {
    
    func LoginToAccount()
    {
        
        var username = readLine()
        var password = readLine()
        //let i = Users
        for i in Users
        {
            if username == i.username && password == i.password
            {
                
            }
        }
    }
}


class Profile {
    var username : String
    var password : String
    
    
    init(username: String, password: String)
    {
        self.username = username
        self.password = password
    }
    
    func newUser() {
        
        var writeUsername = readLine()
        var writePassword = readLine()
        
        
        Users.append(Profile(username : String = writeUsername, password : String = writePassword))
    }
}

var ulrik = Profile(username : "Ulrik", password: "ulrik")
var benjamin = Profile(username: "Benjamin", password: "Password1")

var Users : Array =  [benjamin]



