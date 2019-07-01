//
//  ViewController.swift
//  Calculator
//
//  Created by Денис Андреев on 7/1/19.
//  Copyright © 2019 Денис Андреев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    
    var numberFromScreen:Double = 0
    var firstNum:Double = 0
    var operation:Int = 0
    var mathSign: Bool = false
    
    override func viewDidLoad() {
    }
    
    
    @IBAction func digit(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
            
        }
        else {
            result.text =  result.text! + String(sender.tag)
        }
        numberFromScreen = Double(result.text!)!

        
    }
    
    
    @IBAction func actionButtons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15   {
            firstNum = Double(result.text!)!
            operation = sender.tag
            mathSign = true
        }
            
            
        else if sender.tag == 15 {
            if operation == 11{
                result.text = String(firstNum/numberFromScreen)
            }
            else if operation == 12{
                result.text = String(firstNum*numberFromScreen)
            }
            else if operation == 13{
                result.text = String(firstNum-numberFromScreen)
            }
            else if operation == 14{
                result.text = String(firstNum+numberFromScreen)
            }
        }
        else if sender.tag == 10{
            result.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
        
         if operation == 17 {
            result.text = String(firstNum*firstNum)
        }
         if operation == 16 {
            result.text = String(sqrt(firstNum))
        }
       
    }
    
    
}

