

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weghtSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    
    
    @IBAction func hightSliderChanged(_ sender: UISlider) {

        heightValue.text = String(format: "%.2fm", sender.value)
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        weightValue.text = String(format: "%.0fKg", sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weghtSlider.value
        
        calculatorBrain.caluclateBMI(height, weight)
        
        
                
        self.performSegue(withIdentifier: "calToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "calToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
        
    }
    
    
}
