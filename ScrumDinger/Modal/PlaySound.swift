//
//  PLaySound.swift
//  ScrumDinger
//
//  Created by KANISHK VIJAYWARGIYA on 06/10/21.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSounds(sound: String, type: String) {
  if let path = Bundle.main.path(forResource: sound, ofType: type) {
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
      audioPlayer?.play()
    } catch {
      print("Couldn't find the file")
    }
  }
}

