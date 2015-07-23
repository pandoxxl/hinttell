//
//  homeTVC.swift
//  login1
//
//  Created by Mac Mini on 7/21/15.
//  Copyright (c) 2015 Mac Mini. All rights reserved.
//

import UIKit

class homeTVC: UITableViewController,UISearchBarDelegate{

    @IBOutlet weak var friendList: UIBarButtonItem!
    @IBOutlet weak var avatar: UIImageView!
    @IBAction func searchBar(sender: UIBarButtonItem) {
        println("show search")
        self.navigationItem.rightBarButtonItem = nil
        self.navigationItem.leftBarButtonItem = nil
        let controller = UISearchController(searchResultsController: nil)
        //controller.searchResultsUpdater = self
        
        controller.hidesNavigationBarDuringPresentation = false
        controller.dimsBackgroundDuringPresentation = false
        //controller.searchBar.delegate = self
        controller.searchBar.searchBarStyle = UISearchBarStyle.Prominent
        controller.searchBar.sizeToFit()
        controller.searchBar.placeholder = "Search"
        controller.searchBar.setShowsCancelButton(true, animated: true)
        self.navigationItem.titleView = controller.searchBar
    }
    /*@IBAction func searchBar(sender: UIBarButtonItem) {
        println("show search")
        self.navigationItem.rightBarButtonItem = nil
        self.navigationItem.leftBarButtonItem = nil
        let controller = UISearchController(searchResultsController: nil)
        //controller.searchResultsUpdater = self
        
        controller.hidesNavigationBarDuringPresentation = false
        controller.dimsBackgroundDuringPresentation = false
        //controller.searchBar.delegate = self
        controller.searchBar.searchBarStyle = UISearchBarStyle.Prominent
        controller.searchBar.sizeToFit()
        controller.searchBar.placeholder = "Search"
        controller.searchBar.setShowsCancelButton(true, animated: true)
        self.navigationItem.titleView = controller.searchBar
    }*/
    override func viewDidLoad() {
        super.viewDidLoad()
        var image = UIImage(named: "logotext20")
        self.navigationItem.titleView = UIImageView(image: image)
        if self.revealViewController() != nil {
            friendList.target = self.revealViewController()
            friendList.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.revealViewController().rearViewRevealWidth = 325
        }
        avatar.layer.cornerRadius = avatar.frame.height/2
        avatar.clipsToBounds = true
    }
    /*func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        println("Сancel button tapped")
    }*/
    func searchBarCancelButtonClicked(searchBar: UISearchBar){
        println("search: 9")
        searchBar.resignFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
