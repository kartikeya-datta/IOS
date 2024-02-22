//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Datta,M Kartikeya on 2/22/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    @IBOutlet weak var courseNumberOL: UILabel!
    @IBOutlet weak var courseTitleOL: UILabel!
    @IBOutlet weak var semesterOL: UILabel!
    @IBOutlet weak var previousOL: UIButton!
    @IBOutlet weak var nextOL: UIButton!
    
    let courses = [["img01", "44555", "Network Security", "Fall"],["img02", "44666", "IOS", "Spring"],["img03", "44556", "Data Streaming", "Summer"]]
    
    var imageNum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //previous button should be disabled
        previousOL.isEnabled = false;
        //display the first coursse details (index 0)
        imageViewOL.image = UIImage(named: courses[0][0])
        courseNumberOL.text = courses[0][1]
        courseTitleOL.text = courses[0][2]
        semesterOL.text = courses[0][3]
    }

    @IBAction func previousBTN(_ sender: Any) {
        //next button should be enabled
        nextOL.isEnabled = true;
        
        //decrement the image number
        imageNum -= 1;
        
        //update the content       //update the course details
        UpdateContent(imageNum)
        
        //upon reaching the beggining of the array, disable previous button
        if(imageNum == 0){
        previousOL.isEnabled = false;
        }
    }
    @IBAction func nextBTN(_ sender: Any) {
        //previous button should be enabled
        previousOL.isEnabled = true;
        
        //increment the image number
        imageNum += 1;
        
        //update the course details
        UpdateContent(imageNum)
        
        //once the user reaches the end of the array, next button must be disabled
        if(imageNum == courses.count - 1){
            nextOL.isEnabled = false;
        }
    }// end of next btn
    
    //this is a helpful function to update contents
    func UpdateContent(_ imageNumber : Int){
        imageViewOL.image = UIImage(named: courses[imageNumber][0])
        courseNumberOL.text = courses[imageNumber][1]
        courseTitleOL.text = courses[imageNumber][2]
        semesterOL.text = courses[imageNumber][3]
    }
    
}

