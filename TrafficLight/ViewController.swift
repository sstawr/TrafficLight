//
//  ViewController.swift
//  TrafficLight
//
//  Created by Evgeni Glushko on 5.11.23.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var changeLightButton: UIButton!
    
    var currentActiveLightNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        changeLightButton.layer.cornerRadius = 10
    }


    @IBAction func changeLightButtonDidTapped(_ sender: UIButton) {
        sender.setTitle("Next", for: .normal)
        
        switch currentActiveLightNumber {
        case 0:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            currentActiveLightNumber += 1
        case 1:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            currentActiveLightNumber += 1
        case 2:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            currentActiveLightNumber = 0
        default:
            break
        }
    }
}

