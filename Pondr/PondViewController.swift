//
//  PondViewController.swift
//  Pondr
//
//  Created by Jessica Yu on 7/21/21.
//

import UIKit

class PondViewController: UIViewController {
    var previousVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let profileVC = segue.destination as? ProfileViewController {
            profileVC.infoVC = previousVC
        }
        
        if let exploreVC = segue.destination as? ExploreViewController {
            exploreVC.exploringVC = previousVC
        }
    }
    

}
