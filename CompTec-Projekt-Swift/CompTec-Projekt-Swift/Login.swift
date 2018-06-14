import Foundation


class Login {
    
    struct Location {
        var username = ""
        var password = ""
        var combatxp = ""
        var firemakingxp = ""
        var woodcuttingxp = ""
        var questpoint = ""
    }
    
    func login(username: String, password: String){
    
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
                    parseJson(data: data!)
                }else{
                    //error
                }
            })
            //start the task
            task.resume()
        }
        func parseJson(data: Data){
            
            
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
            
            print(locArray)
            
        }
        
    }
    
    
    
    func signup(username: String, password: String){
        

            
        //URL to our web service
        
        var URL_SAVE_TEAM = "localhost/MyWebService/api/createteam.php"
            
            
        //TextFields declarations
        var username: String = username
        var password: String = password
        
            
        
                
      
}


}
