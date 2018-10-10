//
//  ViewController.swift
//  Calculator
//
//  Created by EDUARDO MENDOZA on 10/4/18.
//  Copyright © 2018 EDUARDO MENDOZA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool
        {
            textField.resignFirstResponder()
            return true
        }
        
        @IBAction func additionButton(_ sender: UIButton)
        {
           firstNumber.resignFirstResponder()
            secondNumber.resignFirstResponder()

            let number1 = Int(firstNumber.text!)
            let number2 = Int(secondNumber.text!)
           
            
            
            /***************************************************
             * Start Your Code Here For MVP
             ***************************************************/
             let equalTo = (number1 == number2)
           
            
            
            //var equalTo = Bool()
            //if number1 == number2 { equalTo = true }
            //else { equalTo = false }
            
        
            /***************************************************
             * End Your Code Here For MVP
             ***************************************************/
            
            resultLabel.text = "evaluates to \(equalTo)"
           
        
        
    }
    
    @IBOutlet weak var pictures: UIImageView!
    
    
    @IBAction func divisionButton(_ sender: Any) {
    }
    
    @IBAction func multiplacationButton(_ sender: Any) {
    }
    
    @IBAction func subtractionButton(_ sender: Any) {
    }
    
    //@IBAction func additionButton(_ sender: Any) {
    //}
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var secondNumber: UITextField!
    
    
    @IBOutlet weak var firstNumber: UITextField!
    
}


