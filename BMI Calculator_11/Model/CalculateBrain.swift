//
//  CalculateBrain.swift
//  BMI Calculator_11
//
//  Created by Лариса Терегулова on 14.04.2023.
//

import UIKit

struct CalculateBrain {
    var bmi: BMI?
    
   mutating func calculateBMI(weight: Float, height: Float) {
       let bmiValue = weight / (height * height)
       if bmiValue < 18.5 {
           bmi = BMI(value: bmiValue, advice: "Недостаточный вес", colorLiteral: .systemMint)
       } else if bmiValue > 18.5 && bmiValue < 24.9 {
           bmi = BMI(value: bmiValue, advice: "У вас нормальный все, поддерживайте его", colorLiteral: .systemGreen)
       } else {
           bmi = BMI(value: bmiValue, advice: "Вам пора немного похудеть", colorLiteral: .systemPink)
       }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColorLiteral() -> UIColor {
        return bmi?.colorLiteral ?? .white
    }
    
}
