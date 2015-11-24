//
//  ViewController.swift
//  CalculatorTest
//
//  Created by Yang Tian on 11/14/15.
//  Copyright © 2015 Jiao Chu. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var display: UILabel! {
        didSet {
            display.text = "\(0)"
        }
    }
    private var newDisplay: Bool = true //flag for new dispaly on the dispaly label
    
    private var displayValue: Double {
        get {
            let value = NSNumberFormatter().numberFromString(display.text!)!.doubleValue
            newDisplay = true
            return value
        }
        set {
            display.text = "\(newValue)"
        }
    }
    
    
    var calculatorData = CalculatorModel()

    //display numbers but will not store
    @IBAction func digitButtonClick(sender: ButtonView) {
        if(newDisplay) {
            display.text = sender.currentTitle
            newDisplay = false
        } else {
            display.text = display.text! + sender.currentTitle!
        }
    }
    //get operation and perform operator
    @IBAction func operation(sender: ButtonView) {
        calculatorData.appendOperator(displayValue) //store digits first
        
        let flag = calculatorData.appendOperand(sender.currentTitle!)
        if(flag.flag) {
            displayValue = flag.result
            print("dispaly \(displayValue)") //print for test
        }
        
    }

    @IBAction func clearDisplay(sender: AnyObject) {
        display.text = "\(0)"
        newDisplay = true
        calculatorData.clearButtonFunc()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
}

