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
    
    var tip = 0.0
    var splitNumber = 2
    var billAmount = 0.00
    var finalAmount = "0.0"
    

    @IBAction func tipChanged(_ sender: UIButton) {
        
        
        
       
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
               
               
            sender.isSelected = true
        
               
            let buttonTitle = sender.currentTitle!
            let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
            let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
            tip = buttonTitleAsANumber / 100
            billTextField.endEditing(true)
                
                
        
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(Int(sender.value))
        splitNumber = Int(sender.value)
        
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        
        
        let bill = billTextField.text
        if bill != "" {
            
            billAmount = Double(bill!)!
            let result = (billAmount + (billAmount*tip)) / Double(splitNumber)
            finalAmount = String(format: "%.2f", result)
            
        }
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
           
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            
            if segue.identifier == "goToResult"{
                let destinationVC = segue.destination as! ResultViewController
                destinationVC.numberOfPeople = splitNumber
                destinationVC.amountOfEachPerson = finalAmount
                destinationVC.finalTip = Int(tip * 100)
            }
        
    }
}


