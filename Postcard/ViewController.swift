//
//  ViewController.swift
//  Postcard
//
//  Created by David Pirih on 19.09.14.
//  Copyright (c) 2014 piri-piri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextfield: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMail(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = messageTextfield.text
        messageLabel.textColor = UIColor.redColor()
        messageTextfield.text = ""
        messageTextfield.resignFirstResponder()

        nameLabel.hidden = false
        nameLabel.text = nameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        nameTextField.text = ""
        nameTextField.resignFirstResponder()
        sendButton.setTitle("Email send!", forState: UIControlState.Normal)
    }
}

