//
//  ProfileViewController.swift
//  Pondr
//
//  Created by Jessica Yu on 7/21/21.
//

import UIKit

class ProfileViewController: UIViewController {
    var infoVC = ViewController()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pronounsLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var careerLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let nameField = infoVC.nameTextField {
            if let name = nameField.text {
                nameLabel.text = name
            }
        }
        
        if let pronounsField = infoVC.pronounsTextField {
            if let pronouns = pronounsField.text {
                pronounsLabel.text = pronouns
            }
        }
        
        if let locationField = infoVC.locationTextField {
            if let location = locationField.text {
                locationLabel.text = location
            }
        }
        
        if let careerField = infoVC.careerTextField {
            if let career = careerField.text {
                careerLabel.text = career
            }
        }
        
        if let jobField = infoVC.jobTextField {
            if let job = jobField.text {
                jobLabel.text = job
            }
        }
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let pondView = segue.destination as? PondViewController {
            pondView.previousVC = infoVC
        }
        if let exploreView = segue.destination as? ExploreViewController {
            exploreView.exploringVC = infoVC
        }
    }
    

}
