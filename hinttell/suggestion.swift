//
//  suggestion.swift
//  login1
//
//  Created by Mac Mini on 7/16/15.
//  Copyright (c) 2015 Mac Mini. All rights reserved.
//

import UIKit

class suggestion: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var avatar1: UIImageView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var avatar2: UIImageView!
    @IBOutlet weak var bgView1: UIView!
    @IBOutlet weak var bgView2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSizeMake(360, 1000)
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.scrollEnabled = true
        
        //avatar
        avatar.layer.cornerRadius = avatar.frame.height/2
        avatar.clipsToBounds = true
        let image = UIImage(named: "nhu-y.jpg")
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 55, height: 55)
        avatar.addSubview(imageView)
        
        //avatar
        avatar1.layer.cornerRadius = avatar1.frame.height/2
        avatar1.clipsToBounds = true
        let image1 = UIImage(named: "ruzita.jpg")
        let imageView1 = UIImageView(image: image1!)
        imageView1.frame = CGRect(x: 0, y: 0, width: 55, height: 55)
        avatar1.addSubview(imageView1)
        
        //avatar
        avatar2.layer.cornerRadius = avatar2.frame.height/2
        avatar2.clipsToBounds = true
        let image2 = UIImage(named: "peter.jpg")
        let imageView2 = UIImageView(image: image2!)
        imageView2.frame = CGRect(x: 0, y: 0, width: 55, height: 55)
        avatar2.addSubview(imageView2)
        
        //view
        let borderG = CALayer()
        let widthG = CGFloat(1.0)
        borderG.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        borderG.frame = CGRect(x: 0, y: bgView.frame.size.height - widthG, width:  bgView.frame.size.width, height: bgView.frame.size.height)
        borderG.borderWidth = widthG
        bgView.layer.addSublayer(borderG)
        bgView.layer.masksToBounds = true
        
        //view1
        let border1 = CALayer()
        let width1 = CGFloat(1.0)
        border1.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        border1.frame = CGRect(x: 0, y: bgView1.frame.size.height - widthG, width:  bgView1.frame.size.width, height: bgView1.frame.size.height)
        border1.borderWidth = width1
        bgView1.layer.addSublayer(border1)
        bgView1.layer.masksToBounds = true
        
        //view2
        let border2 = CALayer()
        let width2 = CGFloat(1.0)
        border2.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 0.5).CGColor
        border2.frame = CGRect(x: 0, y: bgView2.frame.size.height - widthG, width:  bgView2.frame.size.width, height: bgView2.frame.size.height)
        border2.borderWidth = width2
        bgView2.layer.addSublayer(border2)
        bgView2.layer.masksToBounds = true
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
