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
    
    var player: AVAudioPlayer?
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let buttonName = sender.titleLabel?.text {  // Get the title of the button pressed
            playSound(buttonName)  // Run the function of sound
        }
    }
    
    // https://stackoverflow.com/questions/32036146/how-to-play-a-sound-using-swift
    
    //    func playSound(_ buttonName : String) {
    //        guard let url = Bundle.main.url(forResource: buttonName, withExtension: "wav") else { return }
    //        do {
    //            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
    //            try AVAudioSession.sharedInstance().setActive(true)
    //            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
    //            guard let player = player else { return }
    //            player.play()
    //        } catch let error {
    //            print(error.localizedDescription)
    //        }
    
    func playSound(_ buttonPressed : String) {
        let url = Bundle.main.url(forResource: buttonPressed, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
}
