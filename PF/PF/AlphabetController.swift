//
//  AlphabetController.swift
//  PF
//
//  Created by Maleni Danae on 13/11/18.
//  Copyright © 2018 Martínez Mendoza Aarón, Lopez Ceciliano Brett Antonio. All rights reserved.
//

import UIKit

class AlphabetController: UIViewController, UITableViewDataSource {

  
    @IBOutlet weak var TABLE: UITableView!
    var Letters = [LetterData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Letters.append(LetterData(nombre: "A,a"))
        Letters.append(LetterData(nombre: "B,b"))
        Letters.append(LetterData(nombre: "C,c"))
        Letters.append(LetterData(nombre: "D,d"))
        Letters.append(LetterData(nombre: "E,e"))
        Letters.append(LetterData(nombre: "F,f"))
        Letters.append(LetterData(nombre: "G,g"))
        Letters.append(LetterData(nombre: "H,h"))
        Letters.append(LetterData(nombre: "I,i"))
        Letters.append(LetterData(nombre: "J,j"))
        Letters.append(LetterData(nombre: "K,k"))
        Letters.append(LetterData(nombre: "L,l"))
        Letters.append(LetterData(nombre: "LL,ll"))
        Letters.append(LetterData(nombre: "M,m"))
        Letters.append(LetterData(nombre: "N,n"))
        Letters.append(LetterData(nombre: "Ñ,ñ"))
        Letters.append(LetterData(nombre: "O,o"))
        Letters.append(LetterData(nombre: "P,p"))
        Letters.append(LetterData(nombre: "Q,q"))
        Letters.append(LetterData(nombre: "R,r"))
        Letters.append(LetterData(nombre: "RR,rr"))
        Letters.append(LetterData(nombre: "S,s"))
        Letters.append(LetterData(nombre: "T,t"))
        Letters.append(LetterData(nombre: "U,u"))
        Letters.append(LetterData(nombre: "V,v"))
        Letters.append(LetterData(nombre: "W,w"))
        Letters.append(LetterData(nombre: "X,x"))
        Letters.append(LetterData(nombre: "Y,y"))
        Letters.append(LetterData(nombre: "Z,z"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Letters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LETTER", for: indexPath)
        
        cell.textLabel?.text = "\(Letters[indexPath.row].nombre)"
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "Select" {
            
            let indexPath = TABLE.indexPathForSelectedRow
            let destination = segue.destination as! LetterViewController
            
            destination.LETTER = Letters[(indexPath?.row)!]
        }
        
        
    }
    
}
