//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    let resultSegueId = "goToResult"
    var bmi : BMI?
    
    var calculatorModel = CalculatorModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func HeightSliderChanged(_ sender: UISlider) {
        calculatorModel.setHeight(value: sender.value)
        updateHeightLabel(height: sender.value)
    }
    
    @IBAction func WeightSliderChanged(_ sender: UISlider) {
        calculatorModel.setWeight(value: sender.value)
        updateWeightLabel(weight: sender.value)
    }
    
    func updateHeightLabel(height: Float) {
        heightLabel.text = "\(String(format: "%0.2f", height)) m"
    }
    
    func updateWeightLabel(weight: Float) {
        weightLabel.text = "\(String(format: "%0.1f", weight)) kg"
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        bmi = calculatorModel.getBMI()
        
        performSegue(withIdentifier: resultSegueId, sender: self)
    }
    
    func calculateBMI(weight: Float, height: Float) -> Float {
        return weight / pow(height, 2.0)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == resultSegueId {
            let destination = segue.destination as! ResultViewController
            destination.bmiValue = bmi
        }
    }
    
}
