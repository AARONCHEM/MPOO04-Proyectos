//
//  NumberViewController.swift
//  PF
//
//  Created by Maleni Danae on 14/11/18.
//  Copyright © 2018 Martínez Mendoza Aarón, Lopez Ceciliano Brett Antonio. All rights reserved.
//

import UIKit

class NumberViewController: UIViewController {

    @IBOutlet weak var number: UILabel!
    var NUMBER: NumberData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        number.text = NUMBER.number
    }

}
