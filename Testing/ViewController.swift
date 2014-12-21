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
        if enterMessageTextField.text == "" || enterNameTextField.text == "" {
            messageLabel.hidden = true}
        //added comment to test commits
        else{
            messageLabel.hidden = false
            messageLabel.text = enterMessageTextField.text + " -" + enterNameTextField.text
            messageLabel.textColor = UIColor.cyanColor()
            enterMessageTextField.text = ""
            enterNameTextField.text = ""
            enterMessageTextField.resignFirstResponder()
            MailSent.setTitle("Mail Sent", forState: UIControlState.Normal)
            MailSent.setTitle("Tap to Send", forState: UIControlState.Highlighted)
            delay(0.4) {
                self.MailSent.setTitle("Send Mail", forState: UIControlState.Normal)
                }
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
}
