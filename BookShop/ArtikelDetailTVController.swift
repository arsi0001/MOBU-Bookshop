//
//  ArtikelDetailTVController.swift
//  BookShop
//
//  Created by Arthur on 18/01/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class ArtikelDetailTVController: UITableViewController {

    @IBOutlet weak var buchCoverImageView: UIImageView!
    @IBOutlet weak var buchTitelLabel: UILabel!
    @IBOutlet weak var buchAutorLabel: UILabel!
    @IBOutlet weak var buchPreisLabel: UILabel!
    @IBOutlet weak var buchBeschreibungLabel: UILabel!
    @IBOutlet weak var buchMerkmalLabel: UILabel!
    @IBOutlet weak var buchRezensionLabel: UILabel!
    
    var buchCoverImage : String?
    var buchTitel : String?
    /*var buchAutor : String?
    var buchPreis : String?
    var buchBeschreibung : String?
    var buchMerkmal : String?
    var buchRezension : String?*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.buchCoverImage != nil{
            self.buchCoverImageView.image = UIImage(named: buchCoverImage!)
        }
        if self.buchTitel != nil{
            self.buchTitelLabel.text = buchTitel
        }
        /*if self.buchAutor != nil{
            self.buchAutorLabel.text = buchAutor
        }
        if self.buchPreis != nil{
            self.buchPreisLabel.text = buchPreis        }
        if self.buchBeschreibung != nil{
            self.buchBeschreibungLabel.text = buchBeschreibung
        }
        if self.buchMerkmal != nil{
            self.buchMerkmalLabel.text = buchMerkmal
        }
        if self.buchRezension != nil{
            self.buchRezensionLabel.text = buchRezension
        }*/
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    /*
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
