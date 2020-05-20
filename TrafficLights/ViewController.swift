//
//  ViewController.swift
//  TrafficLights
//
//  Created by Andrey on 20.05.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var textChangeBottonColor: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = redView.frame.size.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.height / 2
        greenView.layer.cornerRadius = greenView.frame.size.height / 2
        textChangeBottonColor.layer.cornerRadius = textChangeBottonColor.frame.size.height / 4
    }

    @IBAction func ChangeBottonColor() {
        
        if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 1
            textChangeBottonColor.setTitle("Next", for: .normal)
        } else
        
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else
        
        if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else
        
        if greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
}

