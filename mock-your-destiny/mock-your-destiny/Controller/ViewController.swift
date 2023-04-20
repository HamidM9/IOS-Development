//
//  ViewController.swift
//  mock-your-destiny
//
//  Created by Hamid Mohammadi on 19/04/23.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var buttonUpLabel: UIButton!
    
    @IBOutlet weak var buttonDownLabel: UIButton!
    
    @IBOutlet weak var storyText: UILabel!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
        
    }
    
    func updateUI() {
        storyText.text = storyBrain.getStoryTitle()
        buttonUpLabel.setTitle(storyBrain.getChoice1(), for: .normal)
        buttonDownLabel.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}















