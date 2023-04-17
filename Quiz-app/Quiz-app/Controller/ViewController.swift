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
    
    @IBOutlet weak var trueButtonLabel: UIButton!
    
    @IBOutlet weak var falseButtonLabel: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var questionNumber = 0
    var score = 0
    let quiz = [Questions(text: "one + two is 3", answer: "TRUE"),
                Questions(text: "three plus three is six", answer: "TRUE"),
                Questions(text: "Two plus two is nine ", answer: "FALSE")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
      
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        if userAnswer==actualAnswer{
            score = score + 1
            
            sender.backgroundColor = UIColor.green
            
        } else{
            sender.backgroundColor = UIColor.red
            
        }
       
        if questionNumber + 1 < quiz.count  {
            questionNumber = questionNumber + 1

        }
        else{
            questionNumber = 0
            score = 0
        }
        
        
         Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
        
        
        
    }
   @objc func updateUI(){
        print("--------------------------")
        questionLabel.text = quiz[questionNumber].text
        scoreLabel.text = "Score : \(score)"
        
        
        trueButtonLabel.backgroundColor = UIColor.systemGroupedBackground
        falseButtonLabel.backgroundColor = UIColor.systemGroupedBackground
       progressBar.progress = Float(questionNumber+1) / Float(quiz.count)
        

    }
    
}

