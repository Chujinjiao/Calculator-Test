//
//  CalculatorModel.swift
//  CalculatorTest
//
//  Created by Yang Tian on 11/23/15.
//  Copyright © 2015 Jiao Chu. All rights reserved.
//

import Foundation

class CalculatorModel {

    private var operandStack = [String]() //store + - × ÷
    private var operatorStack = [Double]() //store digits
    
    //store digits on stack
    func appendOperator(number: Double) {
        operatorStack.append(number)
    }
    
    //clear everything for new calculation
    func clearButtonFunc() {
        operatorStack.removeAll()
        operandStack.removeAll()
    }
    
    //perform calculator when there are enough numbers in the stack
    //return tuple: result for dispaly after finish calculate; flag indecate perform one calculate, when flag is false, result is useless so set it to 0.0
    func appendOperand(operand: String) -> (result: Double, flag: Bool){
        if(!operandStack.isEmpty) {
            let operation = self.operandStack.popLast()!
            var result: Double = 0
            //print for test
            print("operand number \(operandStack.count) \(operandStack)")
            print("operator number \(operatorStack.count) \(operatorStack)")
            
            //whent there are at least two numbers on the stack, calculate
            if(operatorStack.count > 1) {
                result = performOperation(operation, num2: operatorStack.popLast()!, num1: operatorStack.popLast()!)
            }
            
            if(operand != "=") {
                operandStack.append(operand)//store for next calculate
            }
            return (result, true)
            
        } else {
            operandStack.append(operand)
            return (0.0, false)
        }
    }

    
    func performOperation(str: String, num2: Double, num1: Double) -> Double {
        switch str {
        case "+":
            return num1 + num2
        case "−":
            return num1 - num2
        case "×":
            return num1 * num2
        case "÷":
            return num1 / num2
        default:
            break
        }
        return 0
    }

    
}