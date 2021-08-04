//
//  DataManager.swift
//  SpringAnimationAppTraining
//
//  Created by Дмитрий Дмитрий on 04.08.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animationEffects = Spring.AnimationPreset.allCases
    let curveEffects = Spring.AnimationCurve.allCases
    
    private init() {}
}
