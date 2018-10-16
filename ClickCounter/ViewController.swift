//
//  ViewController.swift
//  ClickCounter
//
//  Created by Marco AV Silva on 27/09/18.
//  Copyright © 2018 Marco AV Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func incrementCount() {
        self.counter += 1
        self.label.text = "\(self.counter)"
    }


}

