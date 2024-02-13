//
//  ViewController.swift
//  Datta_PracticeExam01
//
//  Created by Datta,M Kartikeya on 2/13/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var feetOL: UITextField!
    @IBOutlet weak var inchesOL: UITextField!
    @IBOutlet weak var weightOL: UITextField!
    @IBOutlet weak var outputOL: UILabel!
    @IBOutlet weak var imageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Calculate(_ sender: Any) {
        let feet = Double(feetOL.text!)
        let inches = Double(inchesOL.text!)
        let height = feet!*12 + inches!
        let weight = Double(weightOL.text!)
        let BMI = 703*(weight!/(height*height))
        if(BMI < 18.5){
            outputOL.text = ("Your Body Mass Index is \(BMI). \nThis is considered Underweight.")
            imageOL.image = UIImage(named: "underWeight.jpeg")
        }
        else if(BMI >= 18.5 && BMI < 25){
            outputOL.text = ("Your Body Mass Index is \(BMI). \nThis is considered Normal👍.")
            imageOL.image = UIImage(named: "normal.jpeg")
        }
        else if(BMI >= 25.0 && BMI < 30){
            outputOL.text = ("Your Body Mass Index is \(BMI). \nThis is considered Overweight.")
            imageOL.image = UIImage(named: "overWeight.jpeg")
        }
        else {
            outputOL.text = ("Your Body Mass Index is \(BMI). \nThis is considered Obesity.")
            imageOL.image = UIImage(named: "obese.jpeg")
        }
    }
    
}

