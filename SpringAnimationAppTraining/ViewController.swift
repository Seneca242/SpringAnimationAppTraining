//
//  ViewController.swift
//  SpringAnimationAppTraining
//
//  Created by Дмитрий Дмитрий on 03.08.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    
    private var animationEffects = AnimationModel.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animationEffects.labelDisplay
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        animationLabel.text = animationEffects.labelDisplay
        springView.animation = animationEffects.name
        springView.curve = animationEffects.curve
        springView.force = CGFloat(animationEffects.force)
        springView.delay = CGFloat(animationEffects.delay)
        springView.duration = CGFloat(animationEffects.duration)
        springView.damping = CGFloat(animationEffects.damping)
        springView.animate()
        animationEffects = AnimationModel.getAnimation()
        sender.setTitle("\(animationEffects.name)", for: .normal)

    }
    
}

