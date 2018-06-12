//
//  Login.swift
//  CompTec-Projekt Run Escape
//
//  Created by elev on 12/06/2018.
//  Copyright © 2018 elev. All rights reserved.
//

import Foundation

class Login {
    
    func LoginToAccount()
    {
        
        var username = readLine()
        var password = readLine()
        
        if username == Users.username && password == Users.password
        {
            
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
    
    func newUser() ->  {
        
        var username = readLine()
        var password = readLine()
        
        
        
    }
}

var benjamin = Profile(username: "Benjamin", password: "Password1")

var Users : Array<Profile> = [benjamin]
