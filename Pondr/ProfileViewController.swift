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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let nameField = infoVC.nameTextField {
            if let name = nameField.text {
                nameLabel.text = name
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
