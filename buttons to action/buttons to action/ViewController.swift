//
//  ViewController.swift
//  buttons to action
//
//  Created by Maegan Wilson on 5/29/19.
//  Copyright © 2019 MW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        label.text = "Button \(sender.tag + 1) was pressed"
    }

}

