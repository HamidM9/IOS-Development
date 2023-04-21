//
//  ResultViewController.swift
//  for-repeat
//
//  Created by Hamid Mohammadi on 21/04/23.
//

import UIKit

class ResultViewController: UIViewController {

    
    var finalMessage:String?
    @IBOutlet weak var messageLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        messageLabel.text = finalMessage
    }
    

    @IBAction func turnBack(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}




/*
 
 //
 //  ResultViewController.swift
 //  BMI Calculator
 //
 //  Created by Hamid Mohammadi on 18/04/23.
 //  Copyright © 2023 Angela Yu. All rights reserved.
 //

 import UIKit

 class ResultViewController: UIViewController {
     var bmiValue:String?
     var advice:String?
     var color:UIColor?
     
     
     
     @IBOutlet weak var bmiResult: UILabel!
     
     @IBOutlet weak var adviceLabel: UILabel!
     
    
     
     
     override func viewDidLoad() {
         super.viewDidLoad()

         bmiResult.text = bmiValue
         adviceLabel.text = advice
         view.backgroundColor = color
     }
     

     @IBAction func recalcutePressed(_ sender: UIButton) {
         
         self.dismiss(animated: true)
         
     }
     

 }

 */
