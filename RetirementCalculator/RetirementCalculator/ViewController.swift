//
//  ViewController.swift
//  RetirementCalculator
//
//  Created by Jorge Castillo on 1/18/22.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController {

    @IBOutlet weak var uiButton: UIButton!
    
    @IBOutlet weak var lastNameTextView: UITextField!
    @IBOutlet weak var firstNameTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTouch(_ sender: Any) {
        let firstName: String? = firstNameTextView.text
        let lastName: String? = lastNameTextView.text
        
        let properties = ["firstName": firstName!, "lastName": lastName!]
        
        Analytics.trackEvent("button_was_pressed", withProperties: properties)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        Analytics.trackEvent("load_main_view")
    }
    
}

