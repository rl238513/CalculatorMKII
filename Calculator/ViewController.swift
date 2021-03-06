//
//  ViewController.swift
//  Calculator
//
//  Created by EDUARDO MENDOZA on 10/4/18.
//  Copyright © 2018 EDUARDO MENDOZA. All rights reserved.

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
        pictures.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.RawValue(UInt8(UIView.AutoresizingMask.flexibleBottomMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleHeight.rawValue) | UInt8(UIView.AutoresizingMask.flexibleRightMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleLeftMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleTopMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleWidth.rawValue)))
        pictures.contentMode = UIView.ContentMode.scaleAspectFill
        
        creator.text = myName
        
        background.image = UIImage(named: "dhmis-1")
        self.background.layer.cornerRadius = self.background.frame.width / 2
        background.backgroundColor = .red
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
        
        background.backgroundColor = .green
        self.view.backgroundColor = .red
        
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
        
        background.backgroundColor = .green
        self.view.backgroundColor = .red
        
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
        
        background.backgroundColor = .green
        self.view.backgroundColor = .red
        
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
        
        background.backgroundColor = .green
        self.view.backgroundColor = .red

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

