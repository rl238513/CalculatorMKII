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
        pictures.autoresizingMask = UIViewAutoresizing(rawValue: UIViewAutoresizing.RawValue(UInt8(UIViewAutoresizing.flexibleBottomMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleHeight.rawValue) | UInt8(UIViewAutoresizing.flexibleRightMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleLeftMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleTopMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleWidth.rawValue)))
        pictures.contentMode = UIViewContentMode.scaleAspectFill
    }
    
    @IBAction func additionButton(_ sender: UIButton)
    {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
        
        let number1 = Int(firstNumber.text!)
        let number2 = Int(secondNumber.text!)
        let number3 = Double(number1!)
        let number4 = Double(number2!)
        let sum = number1! + number2!
        let answer = number3 + number4
        resultLabel.text = String(answer)
         if sum % 2 == 0 {
            pictures.image = UIImage(named: "funny")
        }
        else {
            pictures.image = UIImage(named: "funnyer")
        }
          if sum == 64{
            pictures.image = UIImage(named: "Image")
        }
}
    
    
    
    @IBAction func divisionButton(_ sender: Any) {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
        
        let number1 = Int(firstNumber.text!)
        let number2 = Int(secondNumber.text!)
        let number3 = Double(number1!)
        let number4 = Double(number2!)
        
        let sum = number1! % number2!
        let answer = number3 / number4
        resultLabel.text = String(answer)
        
         if sum % 2 == 0 {
            pictures.image = UIImage(named: "funny")
        }
        else {
            pictures.image = UIImage(named: "funnyer")
        }
          if sum == 64{
            pictures.image = UIImage(named: "Image")
        }
    }
    
    
    
    @IBAction func multiplacationButton(_ sender: Any) {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
        
        let number1 = Int(firstNumber.text!)
        let number2 = Int(secondNumber.text!)
        let number3 = Double(number1!)
        let number4 = Double(number2!)
        
        let sum = number1! * number2!
        let answer = number3 * number4
        resultLabel.text = String(answer)
        
         if sum % 2 == 0 {
            pictures.image = UIImage(named: "funny")
        }
        else {
            pictures.image = UIImage(named: "funnyer")
        }
          if sum == 64{
            pictures.image = UIImage(named: "Image")
        }
    }
    
    
    
    @IBAction func subtractionButton(_ sender: Any) {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
       
        let number1 = Int(firstNumber.text!)
        let number2 = Int(secondNumber.text!)
        let number3 = Double(number1!)
        let number4 = Double(number2!)
        
        let sum = number1! - number2!
        let answer = number3 - number4
        resultLabel.text = String(answer)
        
        if sum % 2 == 0 {
            pictures.image = UIImage(named: "funny")
        }
        else {
            pictures.image = UIImage(named: "funnyer")
        }
          if sum == 64{
            pictures.image = UIImage(named: "Image")
        }
    }
}


