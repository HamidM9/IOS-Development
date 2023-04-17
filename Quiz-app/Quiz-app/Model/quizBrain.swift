//
//  QuizBrain.swift
//  Quiz-app
//
//  Created by Hamid Mohammadi on 17/04/23.
//

import Foundation


struct QuizBrain{
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [Questions(text: "ONE + TWO IS THREE", answer: "TRUE"),
                Questions(text: "FIVE IS FIVE", answer: "TRUE"),
                Questions(text: "TWO NINES ARE ZERO ", answer: "FALSE")]
    
    
    mutating func nextQuestion() -> String{
   
        return quiz[questionNumber].text
    }
    
    func progressBar() -> Float {
        
        return Float(questionNumber+1) / Float(quiz.count)
    }
    
    mutating func checkQuestionNumberIsLessThanQuizLength()-> Bool{
        
        if questionNumber + 1 < quiz.count{
            questionNumber = questionNumber + 1
            return true
        } else{
            
            return false
        }
    }
 
    mutating func checkAnswer(userAnswer:String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score = score + 1
            return true
        }else{
            return false
            }
    }
    
    func getScore() -> Int{
        return score
    }
    
    mutating func resetEverything(){
        score = 0
        questionNumber = 0
        
    }
    
}




