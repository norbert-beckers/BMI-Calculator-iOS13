//
//  CalculatorModel.swift
//  BMI Calculator
//
//  Created by Norbert Beckers on 04/05/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorModel {
    var height: Float?
    var weight: Float?
    
    mutating func setHeight(value: Float) {
        self.height = value
    }
    
    mutating func setWeight(value: Float) {
        self.weight = value
    }
    
    func getBMI() -> BMI? {
        if let safeHeight = self.height {
            if let safeWeight = weight {
                let bmi = safeWeight / powf(safeHeight, 2.0)
                
                if bmi < 18.5 {
                    return BMI(bmi: bmi, advice: "Eat more pies.", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
                } else if bmi < 24.9 {
                    return BMI(bmi: bmi, advice: "Fit as a fiddle.", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
                } else {
                    return BMI(bmi: bmi, advice: "Eat less pies.", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
                }
            }
            
            return nil
        } else {
            return nil
        }
    }
    
}
