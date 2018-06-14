import Foundation


class Login {
    
    var userpass : String = ""
    var logedin : Bool = false


    struct Location {
        var username = ""
        var password = ""
        var combatxp = ""
        var firemakingxp = ""
        var woodcuttingxp = ""
        var questpoint = ""
    }

    
    
    func login(username: String, password: String)-> String{
        var result : String = ""
        //web url
        let serviceUrl = "http://localhost/db/DbOperation.php"
        
        
        //jasondatadownload
        let url=URL(string: serviceUrl)
        
        
        if let url = url{
            //crate a url session
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url, completionHandler: { (data, response, error) in
                if error == nil{
                    //succeeded
                    
                    // call the parse hason function on the data
                    result = parseJson(data: data!, username , password)
                    
                }else{
                    //error
                }
            })
            //start the task
            task.resume()
            return result
            
            
        }
        func parseJson(data: Data, _ username : String, _ password : String)-> String{
            
            
            var locArray = [Location]()
            
            //parse the data into location
            do{
                let jsonArray = try JSONSerialization.jsonObject(with: data, options: []) as! [Any]
                
                
                for jsonResult in jsonArray{
                    
                    // lav json filen til et dic
                    let jsonDict = jsonResult as! [String:String]
                    // sammel det hele sammen til et array
                    let loc = Location(username: jsonDict["username"]!,
                                       password: jsonDict["password"]!,
                                       combatxp: jsonDict["combatxp"]!,
                                       firemakingxp: jsonDict["firemakingxp"]!,
                                       woodcuttingxp: jsonDict["woodcuttingxp"]!,
                                       questpoint: jsonDict["questpoint"]!)
                    
                    // her tilføjes det
                    locArray.append(loc)
                    
                }
                

                                // TODO: Pass the location array back
            }
            catch {
                print("there was an error")
            }
            
            
            for i in locArray{
                // cheking if user is in array
                if username == i.username{
                    // cheking if users password is true
                    if password == i.password{
                     
                        logedin = true
                        // userpass == seassion id or character
                        userpass = i.username
                        break
                    }else{
                        logedin = false
                        
                    }
                    
                }else{
                    logedin = false
                }
            }
            if logedin == true{
                print("congratz you are now logged in")
                return userpass
                
            }else{
                print("password or username worng try agian")
                return userpass
            }
            
            
        }
        return ""
    }

    
    func signup(username: String, password: String){
  

    }
}

