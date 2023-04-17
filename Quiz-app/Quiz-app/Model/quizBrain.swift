//
//  QuizBrain.swift
//  Quiz-app
//
//  Created by Hamid Mohammadi on 17/04/23.
//

import Foundation


struct QuizBrain{
    
    var questionNumber = 0
    
    let quiz = [Questions(text: "ONE + TWO IS 3", answer: "TRUE"),
                Questions(text: "FIVE IS FIVE", answer: "TRUE"),
                Questions(text: "TWO NINES ARE ZERO ", answer: "FALSE")]
    
    
    
    
    mutating func nextQuestion(){
        
        //----------------------------------------
       
        if questionNumber + 1 < quiz.count  {
            questionNumber = questionNumber + 1
            print(" i am in if")
        }
        else{
            print("i am in else")
        }
        
        func checkQuestionNumberIsLessThanQuizLength(){
            //
        }
        
        
        
        
        //------------------------------------------
    }
    
    
   mutating func checkAnswer(userAnswer:String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            
            
            return true
            //
        }else{
            return false
            //
        }
    }
}




