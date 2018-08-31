//
//  AddGoalVC.swift
//  GoalPost
//
//  Created by Vijay on 31/08/18.
//  Copyright © 2018 vj. All rights reserved.
//

import UIKit

class AddGoalVC: UIViewController {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!

    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.bindKeyBoard()
        
        shortTermButton.isSelectedEXT()
        longTermButton.isDeSelectedEXT()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func shortTermAction(_ sender: Any) {
        
        goalType = .shortTerm
        shortTermButton.isSelectedEXT()
        longTermButton.isDeSelectedEXT()
    }
    
    @IBAction func longTermAction(_ sender: Any) {
        goalType = .longTerm
        shortTermButton.isDeSelectedEXT()
        longTermButton.isSelectedEXT()
    }
    
    @IBAction func nextAction(_ sender: Any) {
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        dismisVC() // Custome methode to dismiss view controller
    }
    
}
