//
//  ViewController.swift
//  HelloApp
//
//  Created by Datta,M Kartikeya on 1/23/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: Any) {
        //Read the entered name
        var input = inputOL.text!
        
        //String interpolate the name with "Hello, "
        
        //Assign it to the display or output label
        outputOL.text = "Hello, \(input)"
    }
    
}

