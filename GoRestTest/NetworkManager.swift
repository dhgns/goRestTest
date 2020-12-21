//
//  NetworkManager.swift
//  GoRestTest
//
//  Created by Rodrigo Hernández Gómez on 17/12/2020.
//  Copyright © 2020 Rodrigo Hernández Gómez. All rights reserved.
//

import Foundation

class Network {
    
    static var shared: Network = Network()
    
}


protocol GoRestAPI {
    
    func getUsers(completed: @escaping (_ users: [String]) -> Void)
    
    func postUser()
    
    func patchUser()
    
    func putUser()
    
    func deleteUser()
    
}


extension Network: GoRestAPI {
    
    static let ACCESS_TOKEN = "*****"
    
    //TODO
    func getUsers(completed: @escaping (_ users: [String]) -> Void) {
    
        let usersURL = "https://gorest.co.in/public-api/users"
        
        URLSession.shared.dataTask(with: URL(string: usersURL)!){
            data, response, error in
            
            if(error != nil) {
                print(error)
            }else{
                debugPrint(response)

                //TODO
                //1 Parsear la respuesta
                //Endode -->    : JSONEncoder
                //Decode <--    : JSONDecoder
                
                //2 Le pasamos la respuesta deserializada
                completed(["usuario1", "usuario2"])
            }
            
        }.resume()
        
    }
    
    //TODO
    func postUser() {
        
    }
    
    //TODO
    func patchUser() {
        
    }
    
    //TODO
    func putUser() {
        
    }
    
    //TODO
    func deleteUser() {
        
        
    }
    
    
    
}


