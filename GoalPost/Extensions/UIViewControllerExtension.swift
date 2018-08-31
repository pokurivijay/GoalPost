//
//  UIViewControllerExtension.swift
//  GoalPost
//
//  Created by Vijay on 31/08/18.
//  Copyright © 2018 vj. All rights reserved.
//

import UIKit

extension UIViewController{
    
    //Push
    func presentDetailsVC(viewController: UIViewController){
        
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewController, animated: false, completion: nil)
        
    }
    
    func dismisVC(){
        
        //create a Transition
        //Add transition to the layer
        //preset VC
        
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
    
    
    //Pop
    
    
    
}
