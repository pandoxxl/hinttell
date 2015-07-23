//
//  signUpVC.swift
//  login1
//
//  Created by Mac Mini on 7/14/15.
//  Copyright (c) 2015 Mac Mini. All rights reserved.
//

import UIKit

class signUpVC: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPwd: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    //@IBOutlet weak var txtEmail: UITextField!
    //@IBOutlet weak var txtPwd: UITextField!
    //@IBOutlet weak var btnLogin: UIButton!
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
        
        txtPwd.layer.cornerRadius = 5
        txtPwd.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).CGColor
        txtPwd.layer.borderWidth = 1
        txtPwd.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName:UIColor.whiteColor()])
        txtPwd.layer.masksToBounds  = true
        let padding = UIView(frame: CGRectMake(0, 0, 10, self.txtPwd.frame.height))
        txtPwd.leftView = padding
        txtPwd.leftViewMode = UITextFieldViewMode.Always
        
        btnLogin.layer.cornerRadius = 5
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
