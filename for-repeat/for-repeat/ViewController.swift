//
//  ViewController.swift
//  for-repeat
//
//  Created by Hamid Mohammadi on 21/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    var idTracker:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
        idTracker = Int(sender.restorationIdentifier!)!
        print(idTracker!)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.finalMessage = "HAmid"
            
            
        }
    }
    
}




