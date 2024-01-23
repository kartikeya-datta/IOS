//
//  ViewController.swift
//  AskDetailsApp
//
//  Created by Datta,M Kartikeya on 1/23/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var NameOutlet: UITextField!
    
    @IBOutlet weak var AgeOutlet: UITextField!
    
    @IBOutlet weak var OutputOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitDetails(_ sender: Any) {
        // Read the entered name and age
        var name = NameOutlet.text!
        var age = AgeOutlet.text!
        OutputOutlet.text = "Hey, \(name). \(age) is a good number😎"
    }
    
}

