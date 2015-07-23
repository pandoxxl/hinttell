//
//  profile2.swift
//  login1
//
//  Created by Mac Mini on 3/26/15.
//  Copyright (c) 2015 Mac Mini. All rights reserved.
//

import UIKit

class profile2: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var txtCountry: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtDistrict: UITextField!
    @IBOutlet weak var txtWard: UITextField!
    @IBOutlet weak var txtStreet: UITextField!
    @IBOutlet weak var txtLocation: UITextField!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnSkip: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    var country = ["Việt Nam", "Thái Lan", "Singapo", "Hàn Quốc"]
    var city = ["HCM","Hà Nội"]
    var district = ["Quận 1","Quận 2","Quận 3"]
    var ward = ["Phường 1","Phường 2","Phường 3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let padding = UIView(frame:CGRectMake(0,0,10,self.txtCountry.frame.height))
        txtCountry.leftView = padding
        txtCountry.leftViewMode = UITextFieldViewMode.Always
        let borderF = CALayer()
        let widthF = CGFloat(1.0)
        borderF.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderF.frame = CGRect(x: 0, y: txtCountry.frame.size.height - widthF, width:  txtCountry.frame.size.width, height: txtCountry.frame.size.height)
        borderF.borderWidth = widthF
        txtCountry.layer.addSublayer(borderF)
        txtCountry.layer.masksToBounds = true
        
        let pdlCity = UIView(frame:CGRectMake(0,0,10,self.txtCity.frame.height))
        txtCity.leftView = pdlCity
        txtCity.leftViewMode = UITextFieldViewMode.Always
        let borderC = CALayer()
        let widthC = CGFloat(1.0)
        borderC.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderC.frame = CGRect(x: 0, y: txtCity.frame.size.height - widthC, width:  txtCity.frame.size.width, height: txtCity.frame.size.height)
        borderC.borderWidth = widthC
        txtCity.layer.addSublayer(borderC)
        txtCity.layer.masksToBounds = true
        
        let pdlDistrict = UIView(frame:CGRectMake(0,0,10,self.txtDistrict.frame.height))
        txtDistrict.leftView = pdlDistrict
        txtDistrict.leftViewMode = UITextFieldViewMode.Always
        let borderD = CALayer()
        let widthD = CGFloat(1.0)
        borderD.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderD.frame = CGRect(x: 0, y: txtDistrict.frame.size.height - widthD, width:  txtDistrict.frame.size.width, height: txtDistrict.frame.size.height)
        borderD.borderWidth = widthD
        txtDistrict.layer.addSublayer(borderD)
        txtDistrict.layer.masksToBounds = true
        
        let pdlWard = UIView(frame:CGRectMake(0,0,10,self.txtWard.frame.height))
        txtWard.leftView = pdlWard
        txtWard.leftViewMode = UITextFieldViewMode.Always
        let borderW = CALayer()
        let widthW = CGFloat(1.0)
        borderW.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderW.frame = CGRect(x: 0, y: txtWard.frame.size.height - widthW, width:  txtWard.frame.size.width, height: txtWard.frame.size.height)
        borderW.borderWidth = widthW
        txtWard.layer.addSublayer(borderW)
        txtWard.layer.masksToBounds = true
        
        let pdlStreet = UIView(frame:CGRectMake(0,0,10,self.txtStreet.frame.height))
        txtStreet.leftView = pdlStreet
        txtStreet.leftViewMode = UITextFieldViewMode.Always
        let borderS = CALayer()
        let widthS = CGFloat(1.0)
        borderS.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderS.frame = CGRect(x: 0, y: txtStreet.frame.size.height - widthS, width:  txtStreet.frame.size.width, height: txtStreet.frame.size.height)
        borderS.borderWidth = widthS
        txtStreet.layer.addSublayer(borderS)
        txtStreet.layer.masksToBounds = true
        
        let pdlLocation = UIView(frame:CGRectMake(0,0,10,self.txtLocation.frame.height))
        txtLocation.leftView = pdlLocation
        txtLocation.leftViewMode = UITextFieldViewMode.Always
        let borderL = CALayer()
        let widthL = CGFloat(1.0)
        borderL.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderL.frame = CGRect(x: 0, y: txtLocation.frame.size.height - widthL, width:  txtLocation.frame.size.width, height: txtLocation.frame.size.height)
        borderL.borderWidth = widthL
        txtLocation.layer.addSublayer(borderL)
        txtLocation.layer.masksToBounds = true
        
        var pickerCountry = UIPickerView()
        var pickerCity = UIPickerView()
        var pickerDistrict = UIPickerView()
        var pickerWard = UIPickerView()

        pickerCountry.tag = 0
        pickerCity.tag = 1
        pickerDistrict.tag = 2
        pickerWard.tag = 3
        
        pickerCountry.delegate = self
        pickerCity.delegate = self
        pickerDistrict.delegate = self
        pickerWard.delegate = self
        
        txtCountry.inputView = pickerCountry
        txtCity.inputView = pickerCity
        txtDistrict.inputView = pickerDistrict
        txtWard.inputView = pickerWard
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0{
            return country.count
        }else if pickerView.tag == 1{
            return city.count
        }else if pickerView.tag == 2{
            return district.count
        }else if pickerView.tag == 3{
            return ward.count
        }
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if pickerView.tag == 0 {
            return country[row]
        }else if pickerView.tag == 1 {
            return city[row]
        }else if pickerView.tag == 2 {
            return district[row]
        }else if pickerView.tag == 3 {
            return ward[row]
        }
        return ""
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            txtCountry.text = country[row]
        }else if pickerView.tag == 1 {
            txtCity.text = city[row]
        }else if pickerView.tag == 2 {
            txtDistrict.text = district[row]
        }else if pickerView.tag == 3 {
            txtWard.text = ward[row]
        }
    }
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
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
