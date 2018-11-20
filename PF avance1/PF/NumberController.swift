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
        
        Numbers.append(NumberData(number: "1"))
        Numbers.append(NumberData(number: "2"))
        Numbers.append(NumberData(number: "3"))
        Numbers.append(NumberData(number: "4"))
        Numbers.append(NumberData(number: "5"))
        Numbers.append(NumberData(number: "6"))
        Numbers.append(NumberData(number: "7"))
        Numbers.append(NumberData(number: "8"))
        Numbers.append(NumberData(number: "9"))
        Numbers.append(NumberData(number: "10"))
        Numbers.append(NumberData(number: "11"))
        Numbers.append(NumberData(number: "12"))
        Numbers.append(NumberData(number: "13"))
        Numbers.append(NumberData(number: "14"))
        Numbers.append(NumberData(number: "15"))
        Numbers.append(NumberData(number: "16"))
        Numbers.append(NumberData(number: "17"))
        Numbers.append(NumberData(number: "18"))
        Numbers.append(NumberData(number: "19"))
        Numbers.append(NumberData(number: "20"))
        Numbers.append(NumberData(number: "30"))
        Numbers.append(NumberData(number: "40"))
        Numbers.append(NumberData(number: "50"))
        Numbers.append(NumberData(number: "60"))
        Numbers.append(NumberData(number: "70"))
        Numbers.append(NumberData(number: "80"))
        Numbers.append(NumberData(number: "90"))
        Numbers.append(NumberData(number: "100"))
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
