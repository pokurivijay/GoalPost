//
//  GoalCell.swift
//  GoalPost
//
//  Created by Vijay on 31/08/18.
//  Copyright © 2018 vj. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    //IBOutlets
    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    
    //To set the Values fo the cell
    func setGoalData(goal: String, type: GoalType, count: Int) {
        goalLabel.text = goal
        typeLabel.text = type.rawValue
        countLabel.text = String(describing: count)
    }
    
}
