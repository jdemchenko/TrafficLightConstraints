//
//  ViewController.swift
//  TrafficLightConstraints
//
//  Created by macbook on 24.03.21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IO Outlets
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var startBtn: UIButton!
    
    private var lighter: [UIView] = []
    var counterOfLighter = 0
    
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        lighter = [greenLightView, yellowLightView, redLightView]
        startBtn.layer.cornerRadius = 10
        roundingView()
        setViewAlpha()
    }
    
    // MARK: - IB Actions
    @IBAction func startBtnPressed() {
        startBtn.setTitle("NEXT", for: .normal)
        switchingTrafficLights()
    }
    
    // MARK: - Private Methods
    private func setViewAlpha() {
        greenLightView.alpha = 0.2
        yellowLightView.alpha = 0.2
        redLightView.alpha = 0.2
    }
    
    private func roundingView() {
        greenLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        redLightView.layer.cornerRadius = 50
    }
    
    private func switchingTrafficLights() {
        setViewAlpha()
        lighter[counterOfLighter].alpha = 1
        counterOfLighter = (counterOfLighter + 1) % lighter.count
    }
    
    
}

