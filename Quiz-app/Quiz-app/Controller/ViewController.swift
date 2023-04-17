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
   
    
    @IBOutlet weak var restartButton: UIButton!
    
    var questionNumber = 0
    var score = 0
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
       
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        if quizBrain.checkAnswer(userAnswer: sender.currentTitle!){
            score = score + 1
            
            sender.backgroundColor = UIColor.green
            
        } else{
            sender.backgroundColor = UIColor.red
            
        }
       
        if questionNumber + 1 < quizBrain.quiz.count  {
            questionNumber = questionNumber + 1
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
        else{
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(finalUI), userInfo: nil, repeats: false)
            questionLabel.font = questionLabel.font?.withSize(50)
            questionLabel.text = "Your Score is \(score)"
            questionLabel.textAlignment = .center
            questionLabel.sizeToFit()
            scoreLabel.isHidden = true
            
            restartModule()
        }
        
        
    }
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
    }
    
    
   @objc func updateUI(){
        
       questionLabel.text = quizBrain.quiz[questionNumber].text
        scoreLabel.text = "Score : \(score)"
        
        
        trueButtonLabel.backgroundColor = UIColor.systemGroupedBackground
        falseButtonLabel.backgroundColor = UIColor.systemGroupedBackground
       progressBar.progress = Float(questionNumber+1) / Float(quizBrain.quiz.count)
        

    }
    
    @objc func finalUI(){
        
        
        
        trueButtonLabel.backgroundColor = UIColor.systemGroupedBackground
        falseButtonLabel.backgroundColor = UIColor.systemGroupedBackground
    }
    
    func restartModule(){
        
        trueButtonLabel.isHidden = true
        falseButtonLabel.isHidden = true
        restartButton.isHidden = false
        restartButton.layer.cornerRadius = restartButton.frame.width / 2
        restartButton.titleLabel?.adjustsFontSizeToFitWidth = true
        restartButton.layer.masksToBounds = true
    }
    
}

