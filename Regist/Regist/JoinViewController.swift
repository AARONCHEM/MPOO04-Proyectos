//
//  JoinViewController.swift
//  Regist
//
//  Created by Usuario invitado on 11/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class JoinViewController: UIViewController {

    
    @IBOutlet weak var NAME: UITextField!
    @IBOutlet weak var PASSWORD: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        if let Name = defaults.object(forKey: "Name") as? String{
            NAME.text = Name
        }
        if let Password = defaults.object(forKey: "Password") as? String{
            PASSWORD.text = Password
        }
    }
    
    @IBAction func JOIN(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        }
}
