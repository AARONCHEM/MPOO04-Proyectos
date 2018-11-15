//
//  LetterViewController.swift
//  PF
//
//  Created by Maleni Danae on 14/11/18.
//  Copyright © 2018 Martínez Mendoza Aarón, Lopez Ceciliano Brett Antonio. All rights reserved.
//

import UIKit

class LetterViewController: UIViewController {

    
    @IBOutlet weak var letter: UILabel!
    
    var LETTER: LetterData!
    override func viewDidLoad() {
        super.viewDidLoad()

        letter.text = LETTER.nombre
    }
}
