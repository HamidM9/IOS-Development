//
//  ViewController.swift
//  اصوات الحسنی
//
//  Created by Hamid Mohammadi on 08/05/23.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    var player:AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func mohammadButton(_ sender: UIButton) {
        playSoundMP3(notePlayed: "mohammad")
        
        
    }
    
    @IBAction func aliButton(_ sender: UIButton) {
        playSoundMP3(notePlayed: "ali")
    }
    
    
    @IBAction func abbasButton(_ sender: UIButton) {
        
        playSound(notePlayed: "abbas")
    }
    
    @IBAction func zamanButton(_ sender: Any) {
    }
    
    @IBAction func zeinabButton(_ sender: UIButton) {
        playSound(notePlayed: "zeinab")
        
    }
    
    
    
    func playSound(notePlayed:String)   {
       
        let url = Bundle.main.url(forResource: notePlayed, withExtension: "m4a")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    func playSoundMP3(notePlayed:String)   {
       
        let url = Bundle.main.url(forResource: notePlayed, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}








    
 
