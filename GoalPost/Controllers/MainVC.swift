//
//  MainVC.swift
//  GoalPost
//
//  Created by Vijay on 31/08/18.
//  Copyright © 2018 vj. All rights reserved.
//

import UIKit
import CoreData

class MainVC: UIViewController {

    @IBOutlet weak var goalListTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func addGoalAction(_ sender: Any) {
        
        guard let addGoalVCObj = storyboard?.instantiateViewController(withIdentifier: "AddGoalVC") else {
            return
        }
        
        presentDetailsVC(viewController: addGoalVCObj)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MainVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell: GoalCell = tableView.dequeueReusableCell(withIdentifier: "GoalCell") as? GoalCell else {
            return UITableViewCell()
        }
        
        cell.setGoalData(goal: "Get Job", type: .shortTerm , count: 30)
        
        return cell
        
    }
    
    
    
    
}
