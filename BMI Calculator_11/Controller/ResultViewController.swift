//
//  ResultViewController.swift
//  BMI Calculator_11
//
//  Created by Лариса Терегулова on 14.04.2023.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var colorLiteral: UIColor?
    var calculateBrain = CalculateBrain()

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        self.view.backgroundColor = colorLiteral
    }
    
    @IBAction func recalculatedButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
