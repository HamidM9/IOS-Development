//
//  ViewController.swift
//  TipCalculator
//
//  Created by Hamid Mohammadi on 23/04/23.
//

import UIKit

class CalculatorViewController: UIViewController {

   
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.1

    @IBAction func tipChanged(_ sender: UIButton) {
        
        
        
       
               zeroPctButton.isSelected = false
               tenPctButton.isSelected = false
               twentyPctButton.isSelected = false
               
               
               sender.isSelected = true
        
               
               let buttonTitle = sender.currentTitle!
               let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
               let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
               tip = buttonTitleAsANumber / 100
                
                
        
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        print(tip)
    }
    
}

