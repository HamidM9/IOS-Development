//
//  ResultViewController.swift
//  TipCalculator
//
//  Created by Hamid Mohammadi on 23/04/23.
//

import UIKit

class ResultViewController: UIViewController {

    
   
    
    
    var numberOfPeople = 2
    var amountOfEachPerson = "0.0"
    var finalTip = 0
    
    
    @IBOutlet weak var finalAmountLabel: UILabel!
    
    @IBOutlet weak var finalSentence: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        finalAmountLabel.text = amountOfEachPerson
        finalSentence.text = "Split between \(numberOfPeople) people, with \(finalTip)% tip"
        
        
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    

}
