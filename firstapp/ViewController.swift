//
//  ViewController.swift
//  firstapp
//
//  Created by Olzhas Akhmetov on 15.09.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
        //label.text = textfield.text
        
        let a = textfield1.text!
        
        let b = textfield2.text!
        
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        
        if let numberA = Int(a), let numberB = Int(b) {
            
            let sum = numberA + numberB
            
            label.text = String(sum)
            
        } else {
            label.text = "Введите 2 числа"
        }
        
        
    }
    
    @IBAction func minus(_ sender: Any) {
        let a = textfield1.text!
        
        let b = textfield2.text!
        
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Введите 2 числа"
            
            return
        }
        
        let sum = numberA * numberB
        
        label.text = String(sum)
        
    }
    
    
}

