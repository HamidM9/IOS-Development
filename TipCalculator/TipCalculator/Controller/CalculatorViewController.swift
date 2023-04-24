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
    var splitNumber = 0

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
        
        print(Double(billTextField.text!)! * tip)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.numberOfPeople = splitNumber
            destinationVC.finalTip = tip
            destinationVC.finalTip = tip * 100
        }
    }
}

