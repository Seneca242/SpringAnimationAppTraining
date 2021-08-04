//
//  AnimationModel.swift
//  SpringAnimationAppTraining
//
//  Created by Дмитрий Дмитрий on 04.08.2021.
//

import Foundation

struct AnimationModel {
    
    let name: String
    let curve: String
    let force: Float
    let delay: Float
    let duration: Float
    let damping: Float
    let velocity: Float
    
    var labelDisplay: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        delay: \(String(format: "%.02f", delay))
        duration: \(String(format: "%.02f", duration))
        damping: \(String(format: "%.02f", damping))
        velocity: \(String(format: "%.02f", velocity))
        """
    }
    
    static func getAnimation() -> AnimationModel {
        AnimationModel(
            name: DataManager.shared.animationEffects.randomElement()?.rawValue ?? "",
            curve: DataManager.shared.curveEffects.randomElement()?.rawValue ?? "",
            force: 1.3,
            delay: 0.5,
            duration: 1.3,
            damping: 1.3,
            velocity: 1.3
        )
    }
}
