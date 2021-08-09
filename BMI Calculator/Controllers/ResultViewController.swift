//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Firas El Jerdy on 07/08/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var advice: String?
    var color: UIColor?
    var bmiValue: String? // we dont know initally the value
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func onRecalculatePress(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
