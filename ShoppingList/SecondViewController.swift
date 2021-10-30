//
//  SecondViewController.swift
//  ShoppingList
//
//  Created by Shirin Mansouri on 2021-10-29.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblListName: UILabel!
    
    @IBOutlet weak var lblFirstItem: UILabel!
    
    @IBOutlet weak var lblSecondItem: UILabel!
    
    @IBOutlet weak var lblThirdItem: UILabel!
    
    @IBOutlet weak var lblForthItem: UILabel!
    
    @IBOutlet weak var lblFifthItem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults=UserDefaults.standard
 
        lblListName.text =  "\(String(defaults.string(forKey: "ListName")!))"
        lblFirstItem.text =  "\("First Item :  ")\(String(defaults.string(forKey: "FirstItem")!))\("   Quantity : ")\(String(defaults.integer(forKey: "FirstQuantity")))"
        lblSecondItem.text =  "\("Second Item :  ")\(String(defaults.string(forKey: "SecondItem")!))\("  Quantity : ")\(String(defaults.integer(forKey: "SecondQuantity")))"
        lblThirdItem.text =  "\("Third Item :  ")\(String(defaults.string(forKey: "ThirdItem")!))\("   Quantity : ")\(String(defaults.integer(forKey: "ThirdQuantity")))"
        lblForthItem.text =  "\("Forth Item :  ")\(String(defaults.string(forKey: "ForthItem")!))\("   Quantity : ")\(String(defaults.integer(forKey: "ForthQuantity")))"
        lblFifthItem.text =  "\("Fifth Item :  ")\(String(defaults.string(forKey: "FifthItem")!))\("   Quantity : ")\(String(defaults.integer(forKey: "FifthQuantity")))"
    

   
    }
    



}
