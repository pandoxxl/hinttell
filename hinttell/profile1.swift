//
//  profile1.swift
//  login1
//
//  Created by Mac Mini on 3/26/15.
//  Copyright (c) 2015 Mac Mini. All rights reserved.
//

import UIKit

class profile1: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var txtBirthday: UITextField!
    @IBOutlet weak var lblGender: UITextField!
    @IBAction func birthdayEditing(sender: UITextField) {
        var datePickerView:UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.Date
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: Selector("datePickerValueChanged:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    @IBOutlet weak var btnMale: UIButton!
    let radio = UIImage(named: "radio") as UIImage!
    let radioSelect = UIImage(named: "radio-select") as UIImage!
    @IBAction func selectMale(sender: UIButton) {
        //let image1 = UIImage(named: "radio-select") as UIImage!
        btnMale.setImage(radioSelect, forState: UIControlState.Normal)
        btnFemale.setImage(radio, forState: UIControlState.Normal)
    }
    @IBOutlet weak var btnFemale: UIButton!
    @IBAction func selectFemale(sender: UIButton) {
        //let image2 = UIImage(named: "radio-select") as UIImage!
        btnFemale.setImage(radioSelect, forState: UIControlState.Normal)
        btnMale.setImage(radio, forState: UIControlState.Normal)
    }
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var btnNext: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let padding = UIView(frame:CGRectMake(0,0,10,self.txtFirstName.frame.height))
        txtFirstName.leftView=padding
        txtFirstName.leftViewMode = UITextFieldViewMode.Always
        let borderF = CALayer()
        let widthF = CGFloat(1.0)
        borderF.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderF.frame = CGRect(x: 0, y: txtFirstName.frame.size.height - widthF, width:  txtFirstName.frame.size.width, height: txtFirstName.frame.size.height)
        borderF.borderWidth = widthF
        txtFirstName.layer.addSublayer(borderF)
        txtFirstName.layer.masksToBounds = true
        
        let pdLName = UIView(frame:CGRectMake(0,0,10,self.txtLastName.frame.height))
        txtLastName.leftView=pdLName
        txtLastName.leftViewMode = UITextFieldViewMode.Always
        let borderL = CALayer()
        let widthL = CGFloat(1.0)
        borderL.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderL.frame = CGRect(x: 0, y: txtLastName.frame.size.height - widthL, width:  txtLastName.frame.size.width, height: txtLastName.frame.size.height)
        borderL.borderWidth = widthL
        txtLastName.layer.addSublayer(borderL)
        txtLastName.layer.masksToBounds = true

        let pdBirthday = UIView(frame:CGRectMake(0,0,10,self.txtBirthday.frame.height))
        txtBirthday.leftView=pdBirthday
        txtBirthday.leftViewMode = UITextFieldViewMode.Always
        let borderB = CALayer()
        let widthB = CGFloat(1.0)
        borderB.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderB.frame = CGRect(x: 0, y: txtBirthday.frame.size.height - widthB, width:  txtBirthday.frame.size.width, height: txtBirthday.frame.size.height)
        borderB.borderWidth = widthB
        txtBirthday.layer.addSublayer(borderB)
        txtBirthday.layer.masksToBounds = true
        
        
        let pdUsername = UIView(frame:CGRectMake(0,0,10,self.username.frame.height))
        username.leftView=pdUsername
        username.leftViewMode = UITextFieldViewMode.Always
        let borderU = CALayer()
        let widthU = CGFloat(1.0)
        borderU.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderU.frame = CGRect(x: 0, y: username.frame.size.height - widthU, width:  username.frame.size.width, height: username.frame.size.height)
        borderU.borderWidth = widthU
        username.layer.addSublayer(borderU)
        username.layer.masksToBounds = true
        
        let borderG = CALayer()
        let widthG = CGFloat(1.0)
        borderG.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderG.frame = CGRect(x: 0, y: view1.frame.size.height - widthG, width:  view1.frame.size.width, height: view1.frame.size.height)
        borderG.borderWidth = widthG
        view1.layer.addSublayer(borderG)
        view1.layer.masksToBounds = true
        
        btnNext.layer.cornerRadius = 15
    }
    func datePickerValueChanged(sender:UIDatePicker) {
        
        var dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        
        dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
        
        txtBirthday.text = dateFormatter.stringFromDate(sender.date)
        
    }
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
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
