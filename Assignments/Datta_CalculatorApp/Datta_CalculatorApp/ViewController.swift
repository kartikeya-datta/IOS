//
//  ViewController.swift
//  Datta_CalculatorApp
//
//  Created by Karthikeya on 2/4/24.
//

import UIKit

class ViewController: UIViewController {
    var num1: Double = 0
    var Operator: String?
    @IBOutlet weak var resultOutlet: UILabel!
    @IBOutlet weak var buttonAllClear: UIButton!
    @IBOutlet weak var buttonClear: UIButton!
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    @IBOutlet weak var buttonDecimal: UIButton!
    @IBOutlet weak var buttonSignChange: UIButton!
    @IBOutlet weak var buttonDivision: UIButton!
    @IBOutlet weak var buttonMultiplication: UIButton!
    @IBOutlet weak var buttonSubstraction: UIButton!
    @IBOutlet weak var buttonAddition: UIButton!
    @IBOutlet weak var buttonModulus: UIButton!
    @IBOutlet weak var buttonEquals: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func allClear(_ sender: Any) {
    resultOutlet.text = ""
    num1 = 0
    Operator = nil
        
    }
    @IBAction func clear(_ sender: Any) {
        resultOutlet.text = String(resultOutlet.text!.dropLast())
        
    }
    @IBAction func zero(_ sender: Any) {
        resultOutlet.text! += "0"
    }
    @IBAction func one(_ sender: Any) {
        resultOutlet.text! += "1"
    }
    @IBAction func two(_ sender: Any) {
        resultOutlet.text! += "2"
    }
    @IBAction func three(_ sender: Any) {
        resultOutlet.text! += "3"
    }
    @IBAction func four(_ sender: Any) {
        resultOutlet.text! += "4"
    }
    @IBAction func five(_ sender: Any) {
        resultOutlet.text! += "5"
    }
    @IBAction func six(_ sender: Any) {
        resultOutlet.text! += "6"
    }
    @IBAction func seven(_ sender: Any) {
        resultOutlet.text! += "7"
    }
    @IBAction func eight(_ sender: Any) {
        resultOutlet.text! += "8"
    }
    @IBAction func nine(_ sender: Any) {
        resultOutlet.text! += "9"
    }
    @IBAction func decimal(_ sender: Any) {
        resultOutlet.text! += "."
    }
    /*
     or we could assign numeric values with a single function too rsther than assigning using different functions for numbers
     
     @IBAction func numericButtonPressed(_ sender: UIButton) {
            if let buttonText = sender.titleLabel?.text {
                resultOutlet.text! += buttonText
            }
        }
     */
    @IBAction func signChange(_ sender: Any) {
        if let text = resultOutlet.text, let value = Double(text) {
                    resultOutlet.text = "\(value * -1)"
                }
    }
    @IBAction func operatorButtonPressed(_ sender: UIButton) {
           if let operandValue = Double(resultOutlet.text!) {
               num1 = operandValue
               Operator = sender.titleLabel?.text
               resultOutlet.text = ""
           }
       }
    /*
     or we could assigh each operation individually with a seperate function
    @IBAction func division(_ sender: Any) {
    } 
    @IBAction func multiplication(_ sender: Any) {
    } 
    @IBAction func substraction(_ sender: Any) {
    } 
    @IBAction func addition(_ sender: Any) {
    } 
    @IBAction func modulus(_ sender: Any) {
    }
     */
    @IBAction func equals(_ sender: Any) {
        if let operand = resultOutlet.text, let num2 = Double(operand) {
            if let operatorType = Operator {
                var result: Double = 0.0
                switch operatorType {
                case "+":
                    result = num1 + num2
                case "-":
                    result = num1 - num2
                case "*":
                    result = num1 * num2
                case "/":
                    if num2 != 0 {
                        result = num1 / num2
                    } else {
                        resultOutlet.text = "Not a number"
                        return
                    }
                case "%":
                    if num2 != 0 {
                        result = num1.truncatingRemainder(dividingBy: num2)
                        result = (result * 10).rounded() / 10
                        print(result)

                    } else {
                        result = 0.0
                    }
                default:
                    break
                }
               // let conv = Int(result)
               // resultOutlet.text = "\((result==Double(conv)) ? String(conv) :  ()String(result))"
                var decimalPlaces = 1
                if result.truncatingRemainder(dividingBy: 1) == 0 {
                    decimalPlaces = 0
                } else if result.truncatingRemainder(dividingBy: 1) > 0 {
                    let decimalCount = String(result).components(separatedBy: ".").last?.count ?? 0
                    if decimalCount > 5 {
                        decimalPlaces = 5
                    }
                    else{
                        decimalPlaces = decimalCount
                    }
                }
                let formattedResult = String(format: "%.\(decimalPlaces)f", result)
                print(formattedResult)
                resultOutlet.text = formattedResult
            }
        }
    }

}

