//
//  ViewController.swift
//  Calculator
//
//  Created by EDUARDO MENDOZA on 10/4/18.
//  Copyright © 2018 EDUARDO MENDOZA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var pictures: UIImageView!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var creator: UILabel!
    var myName:String = "Eduardo Mendoza"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pictures.autoresizingMask = UIViewAutoresizing(rawValue: UIViewAutoresizing.RawValue(UInt8(UIViewAutoresizing.flexibleBottomMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleHeight.rawValue) | UInt8(UIViewAutoresizing.flexibleRightMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleLeftMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleTopMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleWidth.rawValue)))
        pictures.contentMode = UIViewContentMode.scaleAspectFill
        
        creator.text = myName
        
        background.image = UIImage(named: "dhmis")
        resultLabel.backgroundColor = .purple
        firstNumber.backgroundColor = .black
        secondNumber.backgroundColor = .blue
        firstNumber.textColor = .yellow
        secondNumber.textColor = .white
        resultLabel.textColor = .red
        self.view.backgroundColor = .green
    }
   
    @IBAction func additionButton(_ sender: UIButton)
    {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
        
        if let number1 = Double(firstNumber.text!), let number2 = Double(secondNumber.text!){
            let sum = number1 + number2
            resultLabel.text = String(sum)
            
            if sum.truncatingRemainder(dividingBy: 2) == 0 {
                pictures.image = UIImage(named: "funny")
            }
            else {
                pictures.image = UIImage(named: "funnyer")
            }
            if sum == 64{
                pictures.image = UIImage(named: "Image")
            }
        }
        else {
            let alert = UIAlertController(title: "empty textfield", message: "good job dumb dumb want some gum gum", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    @IBAction func divisionButton(_ sender: Any) {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
        
        if let number1 = Double(firstNumber.text!), let number2 = Double(secondNumber.text!){
            let sum = number1 / number2
            resultLabel.text = String(sum)
            
            if sum.truncatingRemainder(dividingBy: 2) == 0 {
                pictures.image = UIImage(named: "funny")
            }
            else {
                pictures.image = UIImage(named: "funnyer")
            }
            if sum == 64{
                pictures.image = UIImage(named: "Image")
            }
        }
        else {
            let alert = UIAlertController(title: "empty textfield", message: "good job dumb dumb want some gum gum", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    @IBAction func multiplacationButton(_ sender: Any) {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
        
        if let number1 = Double(firstNumber.text!), let number2 = Double(secondNumber.text!){
            let sum = number1 * number2
            resultLabel.text = String(sum)
            
            if sum.truncatingRemainder(dividingBy: 2) == 0 {
                pictures.image = UIImage(named: "funny")
            }
            else {
                pictures.image = UIImage(named: "funnyer")
            }
            if sum == 64{
                pictures.image = UIImage(named: "Image")
            }
        }
        else {
            let alert = UIAlertController(title: "empty textfield", message: "good job dumb dumb want some gum gum", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    @IBAction func subtractionButton(_ sender: Any) {
        firstNumber.resignFirstResponder()
        secondNumber.resignFirstResponder()
        
        if let number1 = Double(firstNumber.text!), let number2 = Double(secondNumber.text!){
            let sum = number1 - number2
            resultLabel.text = String(sum)
            
            if sum.truncatingRemainder(dividingBy: 2) == 0 {
                pictures.image = UIImage(named: "funny")
            }
            else {
                pictures.image = UIImage(named: "funnyer")
            }
            if sum == 64{
                pictures.image = UIImage(named: "Image")
            }
        }
        else {
            let alert = UIAlertController(title: "empty textfield", message: "good job dumb dumb want some gum gum", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
}
}

