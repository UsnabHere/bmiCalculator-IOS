

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLable.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func reCalculateButtom(_ sender: UIButton) {
        
        self.dismiss(animated: true , completion: nil)
    }
}
