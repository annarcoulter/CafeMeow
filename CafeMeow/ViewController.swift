//
//  ViewController.swift
//  CafeMeow
//
//  Created by Anna Coulter on 4/9/19.
//  Copyright © 2019 Anna Coulter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button:UIButton!
    var isSegueAllowed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "menuView":
            print("going to the menu view")
            if isSegueAllowed {
                return true
            } else{
                return false
            }
        default:
            print("going to another view??")
            return true
        }
    }
    @IBAction func didPressSwitch(_ sender: Any) {
        isSegueAllowed = !isSegueAllowed
    }
    @IBAction func didPressShowAlert(_ sender: Any) {
        // create alert controller
        let alert = UIAlertController(title: "Hello World!", message: "This is an alert", preferredStyle: .alert)
        //create default action
        let action1 = UIAlertAction(title: "Hello", style: .default) { _ in
            //this code will be run whenever the user picks "Hello"
            print("hello was clicked")
        }
        //create cancel action
        let action2 = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            //this code will be run when the user picks "cancel"
            print("action was cancelled")
        }
        
        //create a destructive action
        let action3 = UIAlertAction(title: "DELETE", style: .destructive) { _ in
            //this code will be run when the user picks "delete"
            print("delete was clicked")
        }
        //add all actions to the alert
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        
        //show the alet to the user
        present(alert,
                animated:true){
                    //this code will run after the alert is shown
                    print("the alert was shown")
        }
    }
}
