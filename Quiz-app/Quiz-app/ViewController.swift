//
//  ViewController.swift
//  Quiz-app
//
//  Created by Hamid Mohammadi on 14/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
  let  quiz = ["one + two", "3"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz[0]
    }


}

