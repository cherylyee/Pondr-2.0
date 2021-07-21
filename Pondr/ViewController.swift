//
//  ViewController.swift
//  Pondr
//
//  Created by Cheryl Yee on 7/20/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var pronounsTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var careerTextField: UITextField!
    @IBOutlet weak var jobTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let profileVC = segue.destination as? PondViewController {
            profileVC.previousVC = self
        }
    }


}

