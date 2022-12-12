//
//  ViewController.swift
//  Traffic Light
//
//  Created by автосалон on 08.12.2022.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var trafficLightButton: UIButton!
    @IBOutlet var greenTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var redTrafficLight: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.width / 2
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.width / 2
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.width / 2
        trafficLightButton.layer.cornerRadius = 10
    }
    
    enum TrafficLight {
        case redLight
        case yellowLight
        case greenLight
        case trafficLightOff
    }
    
    var trafficLight = TrafficLight.redLight
    
    @IBAction func trafficLightButtonDidTapped() {
        trafficLightButton.setTitle("NEXT", for: .normal)
        
        switch trafficLight {
            case .redLight:
                redTrafficLight.alpha = 1
                yellowTrafficLight.alpha = 0.3
                greenTrafficLight.alpha = 0.3
                trafficLight = .yellowLight
            case .yellowLight:
                redTrafficLight.alpha = 0.3
                yellowTrafficLight.alpha = 1
                greenTrafficLight.alpha = 0.3
                trafficLight = .greenLight
            case .greenLight:
                redTrafficLight.alpha = 0.3
                yellowTrafficLight.alpha = 0.3
                greenTrafficLight.alpha = 1
                trafficLight = .trafficLightOff
            case . trafficLightOff:
                redTrafficLight.alpha = 0.3
                yellowTrafficLight.alpha = 0.3
                greenTrafficLight.alpha = 0.3
                trafficLight = .redLight
                trafficLightButton.setTitle("START", for: .normal)
            }
       
        
    }
    
    
    
}

