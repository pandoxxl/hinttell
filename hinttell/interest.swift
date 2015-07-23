//
//  interest.swift
//  login1
//
//  Created by Mac Mini on 3/26/15.
//  Copyright (c) 2015 Mac Mini. All rights reserved.
//

import UIKit

class interest: UIViewController {

    
    @IBOutlet weak var fashion: UIButton!
    @IBOutlet weak var shoes: UIButton!
    @IBOutlet weak var laptop: UIButton!
    @IBOutlet weak var makeup: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    var highLighted:Bool = false
    var highLightedLap:Bool = false
    var highLightedShoes:Bool = false
    var highLightedMakeup:Bool = false
    @IBAction func selectFashion(sender: UIButton) {
        dispatch_async(dispatch_get_main_queue(), {
            if self.highLighted == false{
                sender.highlighted = true
                self.highLighted = true
                let imgSelect = UIImage(named: "bg-select")
                let imageview = UIImageView(image: imgSelect)
                imageview.tag = 100
                self.fashion.addSubview(imageview)
                println("select fashion")
            }else{
                sender.highlighted = false
                self.highLighted = false
                for fashion in self.fashion.subviews{
                    if fashion.tag == 100{
                        fashion.removeFromSuperview()
                    }
                }
                println("deselect fashion")
            }
        })
    }
    @IBAction func selectLap(sender: UIButton) {
        dispatch_async(dispatch_get_main_queue(), {
            if self.highLightedLap == false{
                sender.highlighted = true
                self.highLightedLap = true
                let imgSelect = UIImage(named: "bg-select")
                let imageview = UIImageView(image: imgSelect)
                imageview.tag = 101
                self.laptop.addSubview(imageview)
                println("select laptop")
            }else{
                sender.highlighted = false
                self.highLightedLap = false
                for laptop in self.laptop.subviews{
                    if laptop.tag == 101{
                        laptop.removeFromSuperview()
                    }
                }
                println("deselect laptop")
            }
        })
    }
    @IBAction func selectShoes(sender: UIButton) {
        dispatch_async(dispatch_get_main_queue(), {
            if self.highLightedShoes == false{
                sender.highlighted = true
                self.highLightedShoes = true
                let imgSelect = UIImage(named: "bg-select.png")
                let imageview = UIImageView(image: imgSelect)
                imageview.tag = 102
                self.shoes.addSubview(imageview)
                println("select shoes")
            }else{
                sender.highlighted = false
                self.highLightedShoes = false
                for shoes in self.shoes.subviews{
                    if shoes.tag == 102{
                        shoes.removeFromSuperview()
                    }
                }
                println("deselect shoes")
            }
        })
    }
    @IBAction func selectMakeup(sender: UIButton) {
        dispatch_async(dispatch_get_main_queue(), {
            if self.highLightedMakeup == false{
                sender.highlighted = true
                self.highLightedMakeup = true
                let imgSelect = UIImage(named: "bg-select")
                let imageview = UIImageView(image: imgSelect)
                imageview.tag = 103
                self.makeup.addSubview(imageview)
                println("select makeup")
            }else{
                sender.highlighted = false
                self.highLightedMakeup = false
                for makeup in self.makeup.subviews{
                    if makeup.tag == 103{
                        makeup.removeFromSuperview()
                    }
                }
                println("deselect makeup")
            }
        })

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fashion.layer.borderWidth = 2
        fashion.layer.masksToBounds = false
        fashion.layer.borderColor = UIColor.whiteColor().CGColor
        fashion.layer.cornerRadius = fashion.frame.height/2
        fashion.clipsToBounds = true
        let imgFashion = UIImage(named: "13") as UIImage!
        fashion.setImage(imgFashion, forState: UIControlState.Normal)
        
        laptop.layer.borderWidth = 2
        laptop.layer.masksToBounds = false
        laptop.layer.borderColor = UIColor.whiteColor().CGColor
        laptop.layer.cornerRadius = laptop.frame.height/2
        laptop.clipsToBounds = true
        let imgLap = UIImage(named: "lap.jpg") as UIImage!
        laptop.setImage(imgLap, forState: UIControlState.Normal)
        
        shoes.layer.borderWidth = 2
        shoes.layer.masksToBounds = false
        shoes.layer.borderColor = UIColor.whiteColor().CGColor
        shoes.layer.cornerRadius = shoes.frame.height/2
        shoes.clipsToBounds = true
        let imgShoes = UIImage(named: "three-shoes.jpg") as UIImage!
        shoes.setImage(imgShoes, forState: UIControlState.Normal)
        
        makeup.layer.borderWidth = 2
        makeup.layer.masksToBounds = false
        makeup.layer.borderColor = UIColor.whiteColor().CGColor
        makeup.layer.cornerRadius = makeup.frame.height/2
        makeup.clipsToBounds = true
        let imgMakeup = UIImage(named: "15.jpeg") as UIImage!
        makeup.setImage(imgMakeup, forState: UIControlState.Normal)
        
        
        scrollView.contentSize = CGSizeMake(360, 1000)
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.scrollEnabled = true
    }
    
    /*func clicked(sender:UIButton)
    {
        dispatch_async(dispatch_get_main_queue(), {
            
            if self.highLighted == false{
                sender.highlighted = true
                self.highLighted = true
                
                println("select")
            }else{
                sender.highlighted = false
                self.highLighted = false
                println("deselect")
            }
        })
    }*/

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
