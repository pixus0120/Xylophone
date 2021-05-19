//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        
    }

    @IBAction func pressButton(_ sender: UIButton) {
        playSound (soundName: sender.currentTitle!)
        print(sender.currentTitle!)
        sender.alpha = 0.1
    //   sender.backgroundColor = .gray
        sender.alpha = 1 
    }
}

