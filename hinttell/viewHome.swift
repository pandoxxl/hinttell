//
//  viewHome.swift
//  login1
//
//  Created by Mac Mini on 7/21/15.
//  Copyright (c) 2015 Mac Mini. All rights reserved.
//

import UIKit

class viewHome: UIViewController {

    @IBAction func viewHome(sender: UIButton) {
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        var controller = storyboard.instantiateViewControllerWithIdentifier("main") as! UIViewController
        self.presentViewController(controller, animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
