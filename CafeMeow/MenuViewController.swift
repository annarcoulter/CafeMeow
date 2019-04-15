//
//  MenuViewController.swift
//  CafeMeow
//
//  Created by Anna Coulter on 4/15/19.
//  Copyright © 2019 Anna Coulter. All rights reserved.
//

import Foundation

import UIKit

class MenuViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func didGoBack(_ sender: Any) {
        dismiss(animated: true, completion:nil)
    }
}
