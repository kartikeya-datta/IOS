//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Datta,M Kartikeya on 2/8/24.
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
    
    @IBAction func convert(_ sender: Any) {
        imageOL.image = UIImage(named: "bd.jpeg")
        let usd = Double(inputOL.text!)
        outputOL.text = "You get \(usd!*0.38) Behrin Dinar for \(usd!) US Dollar"
    }
    
}

