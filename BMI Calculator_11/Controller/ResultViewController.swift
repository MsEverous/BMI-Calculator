//
//  ResultViewController.swift
//  BMI Calculator_11
//
//  Created by Лариса Терегулова on 14.04.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculatedButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
