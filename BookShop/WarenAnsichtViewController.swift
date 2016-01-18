//
//  WarenAnsichtViewController.swift
//  BookShop
//
//  Created by Arthur on 17/01/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class WarenAnsichtViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var people: [People]?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView!.estimatedRowHeight = 44.0
        self.tableView!.rowHeight = UITableViewAutomaticDimension
        self.automaticallyAdjustsScrollViewInsets = false
        self.demoData()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func demoData(){
    
        let item1: People = People(name: "Buch 1", portraitImageName: "Buch 123 456 789", bookImageName: "Buch 123 456 789")
        let item2: People = People(name: "Buch 2", portraitImageName: "Buch 2", bookImageName: "Buch 2")
        let item3: People = People(name: "Buch 3", portraitImageName: "Buch 3", bookImageName: "Buch 3")
        
        self.people = [item1, item2, item3]
        print("demoData")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if self.people != nil {
        return self.people!.count
        }
        else {
            return 0
        }
        
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: MyTableViewCell? = tableView.dequeueReusableCellWithIdentifier("bookCell") as? MyTableViewCell
        let person: People = self.people![indexPath.row]
       
        if cell != nil{
            cell!.nameLabel.text = person.name
            cell!.bookImageView.image = UIImage(named: "Buch 2")
        }
        print("TableView")
        return cell!
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        print("didSelectedRowAtIndexPath")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "toBookCellDetailView"){
            let detailVC: WarenDetailViewController? = segue.destinationViewController as? WarenDetailViewController
            
            let item: People = self.people![self.tableView.indexPathForSelectedRow!.row]
            
            if detailVC != nil{
                detailVC!.title = item.name
                detailVC!.imageName = item.portraitImageName
            }
            print("prepareFor")
        }
        
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
