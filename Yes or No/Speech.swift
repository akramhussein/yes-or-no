//
//  Speech.swift
//  Yes or No
//
//  Created by Akram Hussein on 02/08/2017.
//  Copyright © 2017 Ross Atkin Associates. All rights reserved.
//

import Foundation
import AVFoundation

extension AVSpeechSynthesizer {
    func speak(_ string: String) {
        let utterance = AVSpeechUtterance(string: string)
        // HAX: Fix iOS 8 bug
        if #available(iOS 9.0, *) {
            // do nothing
        }
        else {
            utterance.rate = 0.10
        }
        utterance.voice = AVSpeechSynthesisVoice(language: "en-us")
        self.speak(utterance)
    }
}

