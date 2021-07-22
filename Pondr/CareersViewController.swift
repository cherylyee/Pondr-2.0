//
//  CareersViewController.swift
//  Pondr
//
//  Created by Cheryl Yee on 7/22/21.
//

import UIKit

class CareersViewController: UIViewController {
    
    var careerVC = ViewController()
    
    @IBOutlet weak var firstDefaultCareer: UILabel!
    @IBOutlet weak var careerPageTextField: UITextField!
    
    @IBAction func enterButtonTapped(_ sender: UIButton) {
        if let careerInput = careerPageTextField.text {
            careerVC.careerTextField.text =
            "\(careerVC.careerTextField.text ?? ""), \(careerInput)"
        }
        
        if let careerField = careerVC.careerTextField {
            if let career = careerField.text {
                firstDefaultCareer.text = career
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let careerField = careerVC.careerTextField {
            if let career = careerField.text {
                firstDefaultCareer.text = career
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
