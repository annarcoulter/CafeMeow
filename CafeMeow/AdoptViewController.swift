//
//  AdoptViewController.swift
//  CafeMeow
//
//  Created by Anna Coulter on 4/19/19.
//  Copyright © 2019 Anna Coulter. All rights reserved.
//

import Foundation

import UIKit

class AdoptViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func didPressGoBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func didPressShowAlert(_sender: Any){
        let alert=UIAlertController(title:"Mac", message:"More information:",  preferredStyle:.alert)
        
        // create a default action
        let action1 = UIAlertAction(title: "Adoption Fee: $75.00",
                                    style: .default) { _ in
                                        // this code will be run when the user picks "Hello"
                                        print("Hello was clicked")
        }
        // create a cancel action
        let action2 = UIAlertAction(title: "Cancel",
                                    style: .cancel) { _ in
                                        // this code will be run when the user picks "Cancel"
                                        print("action was cancelled")
        }
        // create a destructive action
        let action3 = UIAlertAction(title: "Favorite toy: catnip mouse",
                                    style: .default) { _ in
                                        // this code will be run when the user picks "DELETE"
                                        print("DELETE WAS CLICKED")
        }
        // add all actions to the alert
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        
        // show the alert to the user
        present(alert,
                animated: true) {
                    // this code will run after the alert is shown
                    print("alert was shown")
        }
    }
}
