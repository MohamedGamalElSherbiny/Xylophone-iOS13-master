import UIKit
import AVFoundation  // To import the play sound library

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?  // define the play sound
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {  // Get the title of the button pressed
            playSound(buttonTitle)  // Run the function of sound using button title
            sender.alpha = 0.5  // To give an opacity to the clicked button
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false) { (Timer) in  // To return the button to its origin
                sender.alpha = 1
            }
        }
    }
    
    // https://stackoverflow.com/questions/32036146/how-to-play-a-sound-using-swift
    //    func playSound(_ buttonName : String) {
    //        guard let url = Bundle.main.url(forResource: buttonName, withExtension: "wav") else { return }
    //        do {
    //            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)  // To make it run sound in silent mode
    //            try AVAudioSession.sharedInstance().setActive(true)
    //            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
    //            guard let player = player else { return }
    //            player.play()
    //        } catch let error {
    //            print(error.localizedDescription)
    //        }
    
    // MARK: Playsound Function:
    
    func playSound(_ soundName : String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
}
