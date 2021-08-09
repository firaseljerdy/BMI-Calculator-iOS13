//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Firas El Jerdy on 08/08/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func getBMIValue() -> String {
        let bmi = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi
    }
    
    mutating func calculateBMI(h: Float, w: Float) {
        let bmiValue = w / (h * h)
        //bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Bravo king!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.6643349528, green: 0, blue: 0.08385483176, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "no advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.blue
    }
}
