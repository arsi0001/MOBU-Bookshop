//
//  ArtikelTableViewController.swift
//  BookShop
//
//  Created by Arthur on 19/01/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class ArtikelTableViewController: UITableViewController {

    @IBOutlet weak var buchImage: UIImageView!
    @IBOutlet weak var buchTitel: UILabel!
    @IBOutlet weak var buchAutor: UILabel!
    @IBOutlet weak var buchPreis: UILabel!
    @IBOutlet weak var buchBeschreibung: UILabel!
    @IBOutlet weak var buchMerkmale: UILabel!
    @IBOutlet weak var buchRezension: UILabel!
    @IBOutlet weak var buchAnzahl: UILabel!
    
    var buecher: Book!
    @IBAction func inDenWarenkorb(sender: UIButton) {
        WarenkorbViewController.sharedInstance.warenkorbBuecher.append(buecher)
    }
    var buchImageName: String?
    var buchTitelName: String?
    var buchAutorName: String?
    var buchPreisName: Double?
    var buchBeschreibungName: String?
    var buchMerkmaleName: String?
    var buchRezensionName: String?
    var buchAnzahlName: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "onlyLogo")
        navigationItem.titleView = UIImageView(image: image)
        
        if self.buchImageName != nil{
            self.buchImage.image = UIImage(named: buchImageName!)
        }
        
        if self.buchTitelName != nil{
            self.buchTitel.text = buchTitelName!
        }
        
        if self.buchAutorName != nil{
            self.buchAutor.text = buchAutorName!
        }
        
        if self.buchPreisName != nil{
            self.buchPreis.text = "Preis: " + String(format:"%.2f", buchPreisName!) + " €"
        }
        
        if self.buchBeschreibungName != nil{
            self.buchBeschreibung.text = buchBeschreibungName!
        }
        
        if self.buchMerkmaleName != nil{
            self.buchMerkmale.text = buchMerkmaleName!
        }
        
        if self.buchRezensionName != nil{
            self.buchRezension.text = buchRezensionName!
        }
        
        if self.buchAnzahlName != nil{
            self.buchAnzahl.text = "Anzahl: " + String(buchAnzahlName!)
        }
        
        
        

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

    /*override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
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
