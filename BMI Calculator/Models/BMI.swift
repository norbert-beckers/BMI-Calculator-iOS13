//
//  BMIModel.swift
//  BMI Calculator
//
//  Created by Norbert Beckers on 04/05/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let bmi: Float
    let advice: String
    let color: UIColor
    
    init(bmi: Float, advice: String, color: UIColor) {
        self.bmi = bmi
        self.advice = advice
        self.color = color
    }
}
