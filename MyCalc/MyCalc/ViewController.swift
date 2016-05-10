//
//  ViewController.swift
//  MyCalc
//
//  Created by Lena on 4/18/16.
//  Copyright © 2016 Lena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnResult: UITextField!
    
    var result = Float()
    var currentNumber = Float()
    
    var currentOp = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentOp = "="
        btnResult.text = ("\(result)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnNumberInput(sender: UIButton) {

        currentNumber = currentNumber * 10 + Float(sender.titleLabel!.text!)!
        btnResult.text = ("\(currentNumber)")
    }

    @IBAction func btnOperation(sender: UIButton) {
        
        switch currentOp {
            case "=":
            result = currentNumber
            case "+":
            result = result +  currentNumber
            case "-":
            result = result - currentNumber
            case "*":
            result = result *  currentNumber
            case "/":
            result = result / currentNumber
        
        default:
            print("error")
        }
        
        currentNumber = 0
        btnResult.text = ("\(result)")
        
        if (sender.titleLabel!.text == "=") {
            result = 0
        }
        
        currentOp = sender.titleLabel!.text! as String!
    }
    
    @IBAction func btnClear(sender: UIButton) {
        result = 0
        currentNumber = 0
        currentOp = "="
        btnResult.text = ("\(result)")
    }
    
    
}

