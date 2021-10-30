//
//  ViewController.swift
//  ShoppingList
//
//  Created by Shirin Mansouri on 2021-10-28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnSave: RoundButton!
    
    @IBOutlet weak var Stepper1: UIStepper!
    
    @IBOutlet weak var Stepper2: UIStepper!
    
    @IBOutlet weak var Stepper3: UIStepper!
    
    @IBOutlet weak var Stepper4: UIStepper!
    
    @IBOutlet weak var Stepper5: UIStepper!
    
    
    @IBOutlet weak var txtList: BorderedTextField!
    @IBOutlet weak var lblFirstShopping: UILabel!
    @IBOutlet weak var lblSecondShopping: UILabel!
    
    @IBOutlet weak var lblThirdShopping: UILabel!
    
    @IBOutlet weak var lblForthShopping: UILabel!
    
    @IBOutlet weak var lblFifthShopping: UILabel!
    
    @IBOutlet weak var txtFirst: BorderedTextField!
    
    @IBOutlet weak var txtSecond: BorderedTextField!
    
    @IBOutlet weak var txtThird: BorderedTextField!
    
    @IBOutlet weak var txtFifth: BorderedTextField!
    @IBOutlet weak var txtForth: BorderedTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

         
    }
 
    @IBAction func Stepper1(_ sender: UIStepper) {
        lblFirstShopping.text = String(Int(sender.value))
    }
    
    @IBAction func Stepper2(_ sender: UIStepper) {
        lblSecondShopping.text = String(Int(sender.value))
    }
    
    @IBAction func Stepper3(_ sender: UIStepper) {
        lblThirdShopping.text = String(Int(sender.value))
        
    }
    
    @IBAction func Stepper4(_ sender: UIStepper) {
        lblForthShopping.text = String(Int(sender.value))
    }
    
    @IBAction func Stepper5(_ sender: UIStepper) {
        lblFifthShopping.text = String(Int(sender.value))
    }
    @IBAction func CancelButton(_ sender: RoundButton) {
        
        ClearForm()
    }
    //No comment
    @IBAction func SaveButton(_ sender: RoundButton) {
        let defaults=UserDefaults.standard
        defaults.set(txtFifth.text!, forKey: "FirstItem")
        defaults.set(txtSecond.text!, forKey: "SecondItem")
        defaults.set(txtThird.text!, forKey: "ThirdItem")
        defaults.set(txtForth.text!, forKey: "ForthItem")
        defaults.set(txtFifth.text!, forKey: "FifthItem")
        
        defaults.set(Int(Stepper1.value), forKey: "FirstQuantity")
        defaults.set(Int(Stepper2.value), forKey: "SecondQuantity")
        defaults.set(Int(Stepper3.value), forKey: "ThirdQuantity")
        defaults.set(Int(Stepper4.value), forKey: "ForthQuantity")
        defaults.set(Int(Stepper5.value), forKey: "FifthQuantity")
        defaults.set((txtList.text?.trimmingCharacters(in: .whitespaces).isEmpty)! ? "MyFirstList" : txtList.text ,  forKey: "ListName")
        lblResult.textColor =  UIColor.green
        lblResult.text = " Your List Has Been Successfully Saved "
        ClearForm()
         
        let vc=storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    func ClearForm()
    {
        lblFifthShopping.text = "1"
        lblForthShopping.text = "1"
        lblThirdShopping.text = "1"
        lblSecondShopping.text = "1"
        lblFirstShopping.text = "1"
        txtFirst.text = ""
        txtSecond.text = ""
        txtThird.text = ""
        txtForth.text = ""
        txtFifth.text = ""
        txtList.text = ""
        Stepper1.value = 1
        Stepper2.value = 1
        Stepper3.value = 1
        Stepper4.value = 1
        Stepper5.value = 1
    }
}

