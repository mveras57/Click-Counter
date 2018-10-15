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
    var anotherCounter = 0
    var label: UILabel!
    var anotherLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Label
        let label = UILabel()
        let anotherLabel = UILabel()
        
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        anotherLabel.frame = CGRect(x: 250, y: 150, width: 60, height: 60)
        anotherLabel.text = "0"
        
        view.addSubview(label)
        self.label = label
        view.addSubview(anotherLabel)
        self.anotherLabel = anotherLabel
        
        // increment incrButton
        let incrButton = UIButton()
        incrButton.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        incrButton.setTitle("Incr", for: .normal)
        incrButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(incrButton)
        incrButton.addTarget(self, action: #selector(ViewController.incrementCount), for: .touchUpInside)
        
        // decrement incrButton
        let decrButton = UIButton()
        decrButton.frame = CGRect(x: 150, y: 350, width: 60, height: 60)
        decrButton.setTitle("Decr", for: .normal)
        decrButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decrButton)
        decrButton.addTarget(self, action: #selector(ViewController.decrementCount), for: .touchUpInside)
    }

    @objc func incrementCount() {
        self.counter += 1
        self.label.text = "\(self.counter)"
        incrementAnotherLabel()
    }

    @objc func incrementAnotherLabel() {
        self.anotherCounter += 1
        self.anotherLabel.text = "\(self.anotherCounter)"
    }

    @objc func decrementCount() {
        self.counter -= 1
        self.label.text = "\(self.counter)"
    }

}

