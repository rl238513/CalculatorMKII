//
//  ViewController.swift
//  Calculator
//
//  Created by EDUARDO MENDOZA on 10/4/18.
//  Copyright © 2018 EDUARDO MENDOZA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pictures: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var firstNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func additionButton(_ sender: UIButton)
    {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
        
        let number1 = Int(firstNumber.text!)
        let number2 = Int(secondNumber.text!)
        var sum = number1! + number2!
        resultLabel.text = String(sum)
        
        if sum % 2 == 0 {
            pictures.image = UIImage(named: "pokeball")
        }
        else {
            pictures.image = UIImage(named: "Mickey_Mouse")
        }
    
}
    
    
    
    @IBAction func divisionButton(_ sender: Any) {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
        
        let number1 = Int(firstNumber.text!)
        let number2 = Int(secondNumber.text!)
        var sum = number1! / number2!
        resultLabel.text = String(sum)
        
        if sum % 2 == 0 {
            pictures.image = UIImage(named: "pokeball")
        }
        else {
            pictures.image = UIImage(named: "Mickey_Mouse")
        }
    }
    
    
    
    @IBAction func multiplacationButton(_ sender: Any) {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
        
        let number1 = Int(firstNumber.text!)
        let number2 = Int(secondNumber.text!)
        var sum = number1! * number2!
        resultLabel.text = String(sum)
        
        if sum % 2 == 0 {
            pictures.image = UIImage(named: "pokeball")
        }
        else {
            pictures.image = UIImage(named: "Mickey_Mouse")
        }
        if sum == 64{
          pictures.image = UIImage(named: "Welcome-02-web-version")
        }
    }
    
    
    
    @IBAction func subtractionButton(_ sender: Any) {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
        
        let number1 = Int(firstNumber.text!)
        let number2 = Int(secondNumber.text!)
        var sum = number1! - number2!
        resultLabel.text = String(sum)
        
        if sum % 2 == 0 {
            pictures.image = UIImage(named: "pokeball")
        }
        else {
            pictures.image = UIImage(named: "Mickey_Mouse")
        }
        
    }
    
}


