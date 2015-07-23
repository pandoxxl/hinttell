//
//  tabBar.swift
//  login1
//
//  Created by Mac Mini on 7/20/15.
//  Copyright (c) 2015 Mac Mini. All rights reserved.
//

import UIKit
import MobileCoreServices

class tabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let screenSize = UIScreen.mainScreen().bounds
        //let screenWidth = screenSize.width * 0.425
        let image = UIImage(named: "btn-hint80") as UIImage?
        //let button = UIButton(frame: CGRectMake(screenWidth/2, -7, 50, 50))
        let button = UIButton(frame: CGRectMake(0, 0, 70, 70))
        button.center = CGPointMake(screenSize.width/2,16)
        button.addTarget(self, action: "selectOption", forControlEvents: UIControlEvents.TouchUpInside)
        button.setImage(image, forState: .Normal)
        self.tabBar.addSubview(button)
    }
    
    @IBAction func selectOption() {
        let imagePicker = UIImagePickerController()
        imagePicker.editing = false
        //imagePicker.delegate = self
        let optionMenu = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
        
        // 2
        let cameraAction = UIAlertAction(title: "Chụp ảnh", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            if (UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)){
                imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
                imagePicker.mediaTypes = [kUTTypeImage]
                imagePicker.allowsEditing = true
                self.presentViewController(imagePicker, animated: true, completion: nil)
                imagePicker.cameraCaptureMode = .Photo
            }else{
                println("camera k có")
            }
        })
        optionMenu.addAction(cameraAction)
        
        let selectAction = UIAlertAction(title: "Chọn ảnh từ thư viện", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            println("Chọn ảnh")
            
            imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            self.presentViewController(imagePicker, animated: true, completion: nil)
            //println("Send \(imagePicker.selectedImageAssets)")
            /*let select = editorVC()
            self.presentViewController(select, animated: true, completion: nil)*/
            
        })
        optionMenu.addAction(selectAction)
        //
        let cancelAction = UIAlertAction(title: "Huỷ", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            
        })
        
        // 4
        
        
        optionMenu.addAction(cancelAction)
        
        // 5
        self.presentViewController(optionMenu, animated: true, completion: nil)
        
        
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
