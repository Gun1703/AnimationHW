//
//  ViewController.swift
//  AnimationHW
//
//  Created by 1234 on 18.03.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var animationButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func animationButtonPressed (_ sender: SpringButton) {
        animationSettings()
        animationLabel.text = writeLabel()
        setAnimationView()
        animationView.animate()
        sender.setTitle("Run \(animationView.animation)", for: .normal)
        
    }

   private func setAnimationView() {
        animationView.animation = randomAnimationView.preset
        animationView.curve = randomAnimationView.curve
        animationView.force = randomAnimationView.force
        animationView.duration = randomAnimationView.duration
        animationView.delay = randomAnimationView.delay
    }
    
    private func writeLabel() -> String {
        var label = ""
        label += "preset: \(animationView.animation) \n"
        label += "curve: \(animationView.curve) \n"
        label += String(format: "force: %.2f\n", animationView.force)
        label += String(format: "duration: %.2f\n", animationView.duration)
        label += String(format: "delay: %.2f", animationView.delay)
        return label
    }
}

