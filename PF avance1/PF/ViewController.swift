//
//  ViewController.swift
//  PF
//
//  Created by Maleni Danae on 13/11/18.
//  Copyright © 2018 Martínez Mendoza Aarón, Lopez Ceciliano Brett Antonio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ALPHABET: UIButton!
    @IBOutlet weak var NUMBERS: UIButton!
    @IBOutlet weak var TIME: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ALPHABET.layer.cornerRadius = 10
        NUMBERS.layer.cornerRadius = 10
        TIME.layer.cornerRadius = 10
        
        
    }
}

