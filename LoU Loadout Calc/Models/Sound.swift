//  Sound.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/11/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import AVFoundation

class Sound {
    
    var audioPlayer = AVAudioPlayer()
    
    init(name: String, type: String) {
        
        let sound = NSURL(fileURLWithPath: Bundle.main.path(forResource: name, ofType: type)!)
        try? AVAudioSession.sharedInstance().setCategory(.ambient, options: .mixWithOthers)
        try? AVAudioSession.sharedInstance().setActive(true)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: sound as URL)
            audioPlayer.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }
    
    func playSound() {
        audioPlayer.play()
    }
    
    func stopAudioPlayer() {
        audioPlayer.stop()
    }
}

let niceTestSound = Sound(name: "Nice", type: "mp3")
