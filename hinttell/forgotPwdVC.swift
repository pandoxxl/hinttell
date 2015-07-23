//
//  forgotPwdVC.swift
//  login1
//
//  Created by Mac Mini on 7/14/15.
//  Copyright (c) 2015 Mac Mini. All rights reserved.
//

import UIKit

class forgotPwdVC: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var btnSend: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtEmail.layer.cornerRadius = 5
        txtEmail.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).CGColor
        txtEmail.layer.borderWidth = 1
        txtEmail.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSForegroundColorAttributeName:UIColor.whiteColor()])
        txtEmail.layer.masksToBounds  = true
        let paddingView = UIView(frame: CGRectMake(0, 0, 10, self.txtEmail.frame.height))
        txtEmail.leftView = paddingView
        txtEmail.leftViewMode = UITextFieldViewMode.Always
        
        btnSend.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
