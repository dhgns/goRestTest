//
//  ViewController.swift
//  GoRestTest
//
//  Created by Rodrigo Hernández Gómez on 17/12/2020.
//  Copyright © 2020 Rodrigo Hernández Gómez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        Network.shared.getUsers(completed: { users in
            print("estoy en una funcion definida en linea")
            print("me ejecuto de forma asíncrona, es decir, no se cuando")
        })
        
    
        
    }


}

