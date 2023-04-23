//
//  ViewController.swift
//  for-repeat
//
//  Created by Hamid Mohammadi on 21/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    var tosieBehdashti = TosieBehdashti()
    var idTracker1:CGFloat?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        
        idTracker1 = sender.tintColor.cgColor.components![0]
        tosieBehdashti.setTosie(idTracker: idTracker1!)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.finalMessage = tosieBehdashti.tosie
            
            
 
            
        }
    }
    
}




