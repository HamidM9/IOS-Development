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
    
    let  quiz = [["one + two is 3", "TRUE"],
                    ["three plus three is six", "TRUE"],
                    ["Two plus two is nine ", "FALSE"]]
    var questionNumber = 0
    var score = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        var userAnswer = sender.currentTitle!
        if userAnswer==quiz[questionNumber][1]{
            score = score + 1
            
        } else{
            
        }
        updateUI()
    }
    func updateUI(){
        questionLabel.text = quiz[0][0]
        if questionNumber+1 < quiz.count{
            questionLabel.text = quiz[questionNumber][0]
            questionNumber = questionNumber + 1
            print(score)
        }
    }
    
}

