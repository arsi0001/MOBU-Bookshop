//
//  BackTableView.swift
//  BookShop
//
//  Created by Arthur on 04/01/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import Foundation

class BackTableView: UITableViewController {
    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["Startseite","Alle Kategorien","Alle Angebote","Kürzlich gesehen","Meine Bestellungen","Mein Konto","Kundendienst", "Anmelden/Abmelden"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[indexPath.row]
        
        return cell
    }
}
