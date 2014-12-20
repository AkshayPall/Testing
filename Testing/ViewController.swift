//
//  ViewController.swift
//  Testing
//
//  Created by Akshay Pall on 2014-10-02.
//  Copyright (c) 2014 HighTechHelper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var MailSent: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //if((enterMessageTextField.text = nil) && (enterNameTextField.text = nil)) messageLabel.hidden = true}
        //else{
            messageLabel.hidden = false
            let stringSpace = "   - "
            messageLabel.text = enterMessageTextField.text + stringSpace + enterNameTextField.text
            messageLabel.textColor = UIColor.cyanColor()
            enterMessageTextField.text = ""
            enterNameTextField.text = ""
            enterMessageTextField.resignFirstResponder()
            MailSent.setTitle("Mail Sent", forState: UIControlState.Normal)
          //}
    }
}


