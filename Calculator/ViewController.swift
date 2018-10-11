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


//
//        resultLabel.text = "\(equalTo)"
//
//        if equalTo == true {
//            self.pictures.image = UIImage(named: "pokeball")
//            self.pictures.layer.cornerRadius = self.pictures.frame.width / 2
//            self.pictures.layer.masksToBounds = true
//        }
//        if equalTo == false {
//            self.pictures.image = UIImage(named: "Mickey_Mouse")
//            self.pictures.layer.cornerRadius = self.pictures.frame.width / 2
//            self.pictures.layer.masksToBounds = true
//        }
//
    }
    
    @IBAction func divisionButton(_ sender: Any) {
    }
    
    @IBAction func multiplacationButton(_ sender: Any) {
    }
    
    @IBAction func subtractionButton(_ sender: Any) {
    }
    
  
    
}


