//
//  ViewController.swift
//  firstapp
//
//  Created by Diana Taran on 21.10.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var textfield: UITextField!
    
    
    @IBOutlet weak var textfield1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touched(_ sender: Any) {
        //label.text = textfield.text
        let a = textfield.text!
        let b = textfield1.text!
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        if let numberA = Int(a), let numberB = Int(b) {
            let sum = numberA + numberB
            label.text = String(sum)
        } else {
            label.text = "Введите 2 числа"
        }
        
    }
    
    
    @IBAction func minus(_ sender: Any) {
        let a = textfield.text!
        let b = textfield1.text!
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Введите 2 числа"
            return
        }
            
        let sum = numberA - numberB
        label.text = String(sum)
    }
    
    @IBAction func multiply(_ sender: Any) {
        let a = textfield.text!
        let b = textfield1.text!
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Введите 2 числа"
            return
        }
            
        let sum = numberA * numberB
        label.text = String(sum)
    }
    
    @IBAction func divide(_ sender: Any) {
        let a = textfield.text!
        let b = textfield1.text!
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        guard let numberA = Double(a), let numberB = Double(b) else {
            label.text = "Введите 2 числа"
            return
        }
            
        let sum = numberA / numberB
        label.text = String(sum)
    }
    
}

