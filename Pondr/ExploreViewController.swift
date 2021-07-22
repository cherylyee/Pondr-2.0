//
//  ExploreViewController.swift
//  Pondr
//
//  Created by Jessica Yu on 7/21/21.
//

import UIKit

class ExploreViewController: UIViewController {
    var exploringVC = ViewController()
    @IBOutlet weak var careerLogLabel: UILabel!
    
    @IBAction func addCareerTapped(_ sender: UIButton) {
        exploringVC.careerTextField.text =
        "\(exploringVC.careerTextField.text ?? ""), \(careerLogLabel.text ?? "")"
        
        let careerArray : [String] = ["Programmer 💻",
        "Basketball 🏀", "Teacher 📚", "Astronaut 🚀"]
        let randomInt = Int.random(in: 0..<careerArray.count)
        careerLogLabel.text = careerArray[randomInt]
            
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let profileVC = segue.destination as? ProfileViewController {
            profileVC.infoVC = exploringVC
        }
        
        if let pondView = segue.destination as? PondViewController {
            pondView.previousVC = exploringVC
        }
    }
    

}
