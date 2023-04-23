//
//  ResultViewController.swift
//  for-repeat
//
//  Created by Hamid Mohammadi on 21/04/23.
//

import UIKit

class ResultViewController: UIViewController {

    
    
    @IBOutlet weak var messageLabel: UILabel!
    var finalMessage:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        messageLabel.text = finalMessage

    }
    

    @IBAction func turnBack(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}





