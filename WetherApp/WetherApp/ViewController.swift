//
//  ViewController.swift
//  WetherApp
//
//  Created by Datta,M Kartikeya on 1/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputOL: UITextField!
    @IBOutlet weak var outputOL: UILabel!
    @IBOutlet weak var imageOL: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func BtnClicked(_ sender: Any) {
        var temperature = Int(inputOL.text!)
        
        if(temperature! > 60){
            outputOL.text = " it is hot!🥵"
            imageOL.image = UIImage(named: "hot.jpg")
        }
        else{
            outputOL.text = "it is cold!🥶"
            imageOL.image = UIImage(named: "cold.jpg")
        }
    }
}
