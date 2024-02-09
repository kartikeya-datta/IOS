//
//  ViewController.swift
//  Gopalam_CalculatorApp
//
//  Created by Gopalam,Ramya on 2/8/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var number: UILabel!
    
    var num = String()
    var res = 0.0
    var enabled = false
    func showNumber(){
        number.text = num
        
    }
    @IBAction func buttonAC(_ sender: UIButton){
        number.text = "0"
        num=String()
    }
    
    
    @IBAction func buttonC(_ sender: UIButton){
        number.text = String(number.text!.dropLast())
        num = String(num.dropLast())
    }
    

    @IBAction func buttonSign(_ sender: UIButton){
            // Check if there's any number entered
            guard !num.isEmpty else {
                return
            }
            
            // Find the last number by splitting the input string by operators
            let operators = "+-*/%"
            var lastOperatorIndex = -1
            for (index, char) in num.enumerated().reversed() {
                if operators.contains(char) {
                    lastOperatorIndex = index
                    break
                }
            }
            
            // Check if an operator was found
            guard lastOperatorIndex != -1 else {
                // No operator found, so add a negative sign before the entire expression
                num = "-\(num)"
                showNumber()
                return
            }
            
            // Check if the last operator is addition or subtraction
            let lastOperator = num[num.index(num.startIndex, offsetBy: lastOperatorIndex)]
            if lastOperator == "+" {
                // Replace + with - at the last operator position
                num.replaceSubrange(num.index(num.startIndex, offsetBy: lastOperatorIndex)..<num.index(num.startIndex, offsetBy: lastOperatorIndex+1), with: "-")
            } else if lastOperator == "-" {
                // Replace - with + at the last operator position
                num.replaceSubrange(num.index(num.startIndex, offsetBy: lastOperatorIndex)..<num.index(num.startIndex, offsetBy: lastOperatorIndex+1), with: "+")
            }
            
            showNumber()
        }

    
    @IBAction func buttonDiv(_ sender: UIButton){
        num.append("/")
        showNumber()
    }
    
    
    @IBAction func buttonMult(_ sender: UIButton) {
        num.append("*")
        showNumber()
    }
    
    @IBAction func buttonSub(_ sender: UIButton) {
        num.append("-")
        showNumber()
    }
    
    @IBAction func buttonEqual(_ sender: UIButton){
            // Check if there's any number entered
            guard !num.isEmpty else {
                return
            }

            // Split the input string by operators
            let components = num.split(whereSeparator: { "+-*/%".contains($0) })

            // Guard against invalid input or empty expression
            guard components.count >= 2,
                  let firstOperand = Double(components[0]),
                  let secondOperand = Double(components[1]) else {
                return
            }

            // Perform the operation based on the operator in the input string
            switch num {
            case let str where str.contains("+"):
                res = firstOperand + secondOperand
            case let str where str.contains("-"):
                res = firstOperand - secondOperand
            case let str where str.contains("*"):
                res = firstOperand * secondOperand
            case let str where str.contains("/"):
                if secondOperand != 0 {
                    res = firstOperand / secondOperand
                } else {
                    number.text = "Not a number"
                    return
                }
            case let str where str.contains("%"):
                if secondOperand != 0 {
                    res = firstOperand.truncatingRemainder(dividingBy: secondOperand)
                    res = (res * 10).rounded() / 10
                    print(res)

                } else {
                    res = 0.0
                }
            default:
                break
            }
        var decimalPlaces = 1
        if res.truncatingRemainder(dividingBy: 1) == 0 {
            decimalPlaces = 0
        } else if res.truncatingRemainder(dividingBy: 1) > 0 {
            let decimalCount = String(res).components(separatedBy: ".").last?.count ?? 0
            if decimalCount > 5 {
                decimalPlaces = 5
            }
            else{
                decimalPlaces = decimalCount
            }
        }
        let formattedResult = String(format: "%.\(decimalPlaces)f", res)
        print(formattedResult)
        number.text = formattedResult
        }

    
    @IBAction func buttonAdd(_ sender: UIButton){
        num.append("+")
        showNumber()
    }
    
    @IBAction func buttonPercent(_ sender: UIButton){
        num.append("%")
        showNumber()
    }
    
    @IBAction func buttonDot(_ sender: UIButton) {
        num.append(".")
        showNumber()
    }
    
    
    @IBAction func buttonZero(_ sender: UIButton) {
        num.append("0")
        showNumber()
    }
    
    
    @IBAction func buttonOne(_ sender: UIButton) {
        num.append("1")
        showNumber()
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        num.append("2")
        showNumber()
    }
    
    @IBAction func buttonThree(_ sender: UIButton){
        num.append("3")
        showNumber()
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        num.append("4")
        showNumber()
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        num.append("5")
        showNumber()
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        num.append("6")
        showNumber()
    }
    
    @IBAction func buttonSeven(_ sender: UIButton){
        num.append("7")
        showNumber()
    }
    
    @IBAction func buttonEight(_ sender: UIButton){
        num.append("8")
        showNumber()
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        num.append("9")
        showNumber()
    }
    
    
    
    
    
}

