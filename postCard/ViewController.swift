//
//  ViewController.swift
//  postCard
//
//  Created by Andrew Jones on 10/1/14.
//  Copyright (c) 2014 Andrew Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayNameLabel: UILabel!
    
    @IBOutlet weak var enterNameField: UITextField!
    
    @IBOutlet weak var enterMessageField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        displayNameLabel.hidden = false
        displayNameLabel.text = enterMessageField.text
        displayNameLabel.textColor = UIColor.redColor()
        
        enterMessageField.text = ""
        enterMessageField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

