//
//  NumberController.swift
//  PF
//
//  Created by Maleni Danae on 14/11/18.
//  Copyright © 2018 Martínez Mendoza Aarón, Lopez Ceciliano Brett Antonio. All rights reserved.
//

import UIKit

class NumberController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var TABLENUM: UITableView!
    var Numbers = [NumberData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*Numbers.append(NumberData(number: "1", numimage: UIImage(named: "01")!))
        Numbers.append(NumberData(number: "2", numimage: UIImage(named: "02")!))
        Numbers.append(NumberData(number: "3", numimage: UIImage(named: "03")!))
        Numbers.append(NumberData(number: "4", numimage: UIImage(named: "04")!))
        Numbers.append(NumberData(number: "5", numimage: UIImage(named: "05")!))
        Numbers.append(NumberData(number: "6", numimage: UIImage(named: "06")!))
        Numbers.append(NumberData(number: "7", numimage: UIImage(named: "07")!))
        Numbers.append(NumberData(number: "8", numimage: UIImage(named: "08")!))
        Numbers.append(NumberData(number: "9", numimage: UIImage(named: "09")!))
        Numbers.append(NumberData(number: "10", numimage: UIImage(named: "011")!))
        Numbers.append(NumberData(number: "11", numimage: UIImage(named: "011")!))
        Numbers.append(NumberData(number: "12", numimage: UIImage(named: "012")!))
        Numbers.append(NumberData(number: "13", numimage: UIImage(named: "013")!))
        Numbers.append(NumberData(number: "14", numimage: UIImage(named: "014")!))
        Numbers.append(NumberData(number: "15", numimage: UIImage(named: "015")!))
        Numbers.append(NumberData(number: "16", numimage: UIImage(named: "016")!))
        Numbers.append(NumberData(number: "17", numimage: UIImage(named: "017")!))
        Numbers.append(NumberData(number: "18", numimage: UIImage(named: "018")!))
        Numbers.append(NumberData(number: "19", numimage: UIImage(named: "019")!))
        Numbers.append(NumberData(number: "20", numimage: UIImage(named: "020")!))
        Numbers.append(NumberData(number: "30", numimage: UIImage(named: "030")!))
        Numbers.append(NumberData(number: "40", numimage: UIImage(named: "040")!))
        Numbers.append(NumberData(number: "50", numimage: UIImage(named: "050")!))
        Numbers.append(NumberData(number: "60", numimage: UIImage(named: "060")!))
        Numbers.append(NumberData(number: "70", numimage: UIImage(named: "070")!))
        Numbers.append(NumberData(number: "80", numimage: UIImage(named: "080")!))
        Numbers.append(NumberData(number: "90", numimage: UIImage(named: "090")!))
        Numbers.append(NumberData(number: "100", numimage: UIImage(named: "0100")!))*/
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NUMBER", for: indexPath)
        
        cell.textLabel?.text = "\(Numbers[indexPath.row].number)"
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "SELECT" {
            
            let indexPath = TABLENUM.indexPathForSelectedRow
            let destination = segue.destination as! NumberViewController
            
            destination.NUMBER = Numbers[(indexPath?.row)!]
        }
        
        
    }}
