//
//  DataScence.swift
//  AnimationHW
//
//  Created by 1234 on 18.03.2023.
//

import SpringAnimation
import UIKit

struct Animation {
    
    var preset: String = ""
    var curve: String = ""
    var force: CGFloat = 1
    var duration: CGFloat = 1
    var delay: CGFloat = 1
}
    
var randomAnimationView = Animation()

func animationSettings() {
    randomAnimationView.preset = getRandomPreset()
    randomAnimationView.curve = getRandomCurve()
    randomAnimationView.force = CGFloat.random(in: 0.2...1.4)
    randomAnimationView.duration = CGFloat.random(in: 0.2...1.3)
    randomAnimationView.delay = CGFloat.random(in: 0.2...2.5)
}
    

func getRandomPreset() -> String {
    "\(AnimationPreset.allCases.randomElement() ?? .pop)"
}
    
func getRandomCurve() -> String {
    "\(AnimationCurve.allCases.randomElement() ?? .spring)"
}


//    func getAnimation() -> [Animation] {
//
//        var animations: [Animation] = []
//
//    }
