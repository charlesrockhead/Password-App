//
//  ViewController.swift
//  practice0
//
//  Created by Charles Rockhead on 9/11/20.
//  Copyright © 2020 Charles Rockhead. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var password = "1234"
    var attempt = ""
    @IBOutlet weak var currNum: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currNum.text = attempt
    }

    @IBAction func updateNum(_ sender: UIButton) {
        attempt += sender.titleLabel?.text ?? ""
        currNum.text = attempt
    }
    
    @IBAction func reset(_ sender: Any) {
        attempt = ""
        currNum.text = attempt
        view.backgroundColor = .white
    }
    
    
    @IBAction func checkAttempt(_ sender: Any) {
        if attempt == password {
            view.backgroundColor = .green
        }
        else {
            view.backgroundColor = .red
        }
    
    }
    
}

