//
//  ViewController.swift
//  Yes or No
//
//  Created by Akram Hussein on 02/08/2017.
//  Copyright © 2017 Ross Atkin Associates. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var yesButton: UIButton! {
        didSet {
            self.yesButton.setTitle("yes".localized.uppercased(), for: .normal)
            self.yesButton.setTitleColor(.appTextColor, for: .normal)
            self.yesButton.backgroundColor = .appGreen
        }
    }
    
    @IBOutlet weak var noButton: UIButton! {
        didSet {
            self.noButton.setTitle("no".localized.uppercased(), for: .normal)
            self.noButton.setTitleColor(.appTextColor, for: .normal)
            self.noButton.backgroundColor = .appRed
        }
    }
    
    // MARK: Properties
    
    var synth : AVSpeechSynthesizer! {
        didSet {
            self.synth!.pauseSpeaking(at: .word)
        }
    }
    
    // MARK: View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.synth = AVSpeechSynthesizer()
    }
    
    // MARK: UI Actions
    
    @IBAction func yesButtonPressed(_ sender: UIButton) {
        self.synth.speak("yes".localized.uppercased())
    }
    
    @IBAction func noButtonPressed(_ sender: UIButton) {
        self.synth.speak("no".localized.uppercased())
    }
}
