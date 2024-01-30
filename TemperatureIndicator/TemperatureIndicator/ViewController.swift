//
//  ViewController.swift
//  TemperatureIndicator
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

    @IBAction func TellingWeather(_ sender: Any) {
        // take the input
        var temp = Int(inputOL.text!)
        if(temp! >= 60){
            outputOL.text = "It is hot outside🥵"
        }
        else{
            outputOL.text = "it is cold out🥶"
        }
    }
    
}

