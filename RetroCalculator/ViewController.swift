//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Akshay Thakare on 1/7/17.
//  Copyright © 2017 Akshay Thakare. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var btnSound: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        
        let soundURL = URL.init(fileURLWithPath: path!)
        
        do{
            try btnSound = AVAudioPlayer.init(contentsOf: soundURL)
            btnSound.prepareToPlay()
        }catch let err as NSError{
            print(err.debugDescription)
        }
    }

    @IBAction func numberPressed(sender: UIButton){
        playSound()
    }
    
    func playSound(){
        if btnSound.isPlaying{
            btnSound.stop()
        }
        
        btnSound.play()
    }


}

