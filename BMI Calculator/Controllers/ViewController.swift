//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func onHeightSliderChange(_ sender: UISlider) {
        heightText.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func onWeightSliderChange(_ sender: UISlider) {
        weightText.text = String(format: "%.0f", sender.value) + "Kg"
    }
    @IBAction func onCalculatePress(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        print(bmi)
        
    }
    
}

