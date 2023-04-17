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
    
    
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
       
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        if quizBrain.checkAnswer(userAnswer: sender.currentTitle!){
            
            
            sender.backgroundColor = UIColor.green
            
        } else{
            sender.backgroundColor = UIColor.red
            
        }
       
        if  quizBrain.checkQuestionNumberIsLessThanQuizLength() {
            
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
        else{
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(finalUI), userInfo: nil, repeats: false)
            questionLabel.font = questionLabel.font?.withSize(17)
            questionLabel.text = "Your Score is \(quizBrain.getScore())"
            questionLabel.textAlignment = .center
            questionLabel.sizeToFit()
            scoreLabel.isHidden = true
            
            restartModule()
        }
        
        
    }
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        
        quizBrain.resetEverything()
        updateUI()
        scoreLabel.isHidden = false
        trueButtonLabel.isHidden = false
        falseButtonLabel.isHidden = false
        restartButton.isHidden = true
        
        scoreLabel.text = "Score : \(quizBrain.getScore())"
        questionLabel.font = questionLabel.font?.withSize(17)
        
        
        
        
        
    }
    
    
   @objc func updateUI(){
        
       questionLabel.text = quizBrain.nextQuestion()
       progressBar.progress = quizBrain.progressBar()
       
       questionLabel.textAlignment = .center
       questionLabel.sizeToFit()
       
       scoreLabel.text = "Score : \(quizBrain.getScore())"
        
        
        trueButtonLabel.backgroundColor = UIColor.systemGroupedBackground
        falseButtonLabel.backgroundColor = UIColor.systemGroupedBackground
       
        

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

