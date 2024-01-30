//
//  ViewController.swift
//  EmotionsApp
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

    @IBAction func Onclick(_ sender: Any) {
        var mood = inputOL.text!
        if (mood == "happy"){
            outputOL.text = "I am Happy!😄"
            imageOL.image = UIImage(named: "happy.jpg")
        }
        else if (mood.contains("sad")){
            outputOL.text = "I am Sad!😔"
            imageOL.image = UIImage(named: "sad.jpg")
        }
        else if (mood.contains("angry")){
            outputOL.text = "I am angry!😡"
            imageOL.image = UIImage(named: "angry.jpg")
        }
        else if (mood.contains("crying")){
            outputOL.text = "I am crying!😭"
            imageOL.image = UIImage(named: "crying.jpg")
        }
        else{
            outputOL.text = "I am Dumb!🙃"
            imageOL.image = UIImage(named: "dumb.jpg")
        }
    }
    
}

