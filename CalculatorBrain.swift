

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    
    func getBmiValue() -> String{
        let bmiTo2Decimal = String(format: "%.2fm", bmi?.value ?? 0.0)
        return bmiTo2Decimal
    }
    
    mutating func caluclateBMI(_ height : Float , _ weight : Float){
        var bmiValue =  weight / pow(height,2)
        
        
        if bmiValue < 18.5 {
            bmi = BMI (value: bmiValue, advice: "consume more calories.", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI (value: bmiValue, advice: "Fit and Fine", color: UIColor.green)
        }
    else {
        bmi = BMI (value: bmiValue, advice: "Eat lesser calories ", color: UIColor.systemPink)
    }
    
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
        
    }
    
    func getColor() -> UIColor{
        
        return bmi?.color ?? UIColor.white
        
        
    }
    
    
    
}
