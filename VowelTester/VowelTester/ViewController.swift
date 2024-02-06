//
//  ViewController.swift
//  VowelTester
//
//  Created by Datta,M Kartikeya on 1/25/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkingForVowels(_ sender: Any) {
        
        // Read the entered text and assign it to a variable
        var input = inputOL.text!
        
        //Check for vowels using if
        if(input.contains("a") ||
           input.contains("e") ||
           input.contains("i") ||
           input.contains("o") ||
           input.contains("u"))
        {
        //assigning the message
            outputOL.text = "\(input) contains vowels.🫡"
        }
        else{
            outputOL.text = "\(input) does not contain vowels😳"
        }
        //assigning the message
        
    }
    
}

