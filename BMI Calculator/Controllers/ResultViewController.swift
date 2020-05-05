//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Norbert Beckers on 03/05/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = String(format: "%0.1f", bmiValue?.bmi ?? 0.0)
        adviceLabel.text = bmiValue?.advice ?? "No advice."
        view.backgroundColor = bmiValue?.color ?? .white
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
