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
        
        Letters.append(LetterData(nombre: "A,a", imagen: UIImage(named: "Aa")!))
        Letters.append(LetterData(nombre: "B,b", imagen: UIImage(named: "Bb")!))
        Letters.append(LetterData(nombre: "C,c", imagen: UIImage(named: "Cc")!))
        Letters.append(LetterData(nombre: "D,d", imagen: UIImage(named: "Dd")!))
        Letters.append(LetterData(nombre: "E,e", imagen: UIImage(named: "Ee")!))
        /*Letters.append(LetterData(nombre: "F,f", imagen: UIImage(named:"Ff")!))
        Letters.append(LetterData(nombre: "G,g", imagen: UIImage(named:"Gg")!))))
        Letters.append(LetterData(nombre: "H,h", imagen: UIImage(named:"Hh")!))))
        Letters.append(LetterData(nombre: "I,i", imagen: UIImage(named:"Ii")!))))
        Letters.append(LetterData(nombre: "J,j", imagen: UIImage(named:"Jj")!))))
        Letters.append(LetterData(nombre: "K,k"), imagen: UIImage(named:"Kk")!)))
        Letters.append(LetterData(nombre: "L,l"), imagen: UIImage(named:"Ll")!)))
        Letters.append(LetterData(nombre: "LL,ll", imagen: UIImage(named:"LLll")!))))
        Letters.append(LetterData(nombre: "M,m"), imagen: UIImage(named:"Mm")!)))
        Letters.append(LetterData(nombre: "N,n"), imagen: UIImage(named:"Nn")!)))
        Letters.append(LetterData(nombre: "Ñ,ñ"), imagen: UIImage(named:"ñ")!)))
        Letters.append(LetterData(nombre: "O,o"), imagen: UIImage(named:"Oo")!)))
        Letters.append(LetterData(nombre: "P,p"), imagen: UIImage(named:"Pp")!)))
        Letters.append(LetterData(nombre: "Q,q"), imagen: UIImage(named:"Qq")!)))
        Letters.append(LetterData(nombre: "R,r"), imagen: UIImage(named:"Rr")!)))
        Letters.append(LetterData(nombre: "RR,rr"), imagen: UIImage(named:"RRrr")!)))
        Letters.append(LetterData(nombre: "S,s"), imagen: UIImage(named:"Ss")!)))
        Letters.append(LetterData(nombre: "T,t"), imagen: UIImage(named:"Tt")!)))
        Letters.append(LetterData(nombre: "U,u"), imagen: UIImage(named:"Uu")!)))
        Letters.append(LetterData(nombre: "V,v"), imagen: UIImage(named:"Vv")!)))
        Letters.append(LetterData(nombre: "W,w"), imagen: UIImage(named:"Ww")!)))
        Letters.append(LetterData(nombre: "X,x"), imagen: UIImage(named:"Xx")!)))
        Letters.append(LetterData(nombre: "Y,y"), imagen: UIImage(named:"Yy")!)))
        Letters.append(LetterData(nombre: "Z,z", imagen: UIImage(named:"Zz")!))))*/
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
