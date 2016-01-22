//
//  WarenkorbViewController.swift
//  BookShop
//
//  Created by Arthur on 21/01/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class WarenkorbViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var summeLabel: UILabel!
    @IBOutlet weak var betragLabel: UILabel!
    var betrag: Double = 0
    var warenkorbBuecher: [Book] = []
    
    static let sharedInstance = WarenkorbViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "onlyLogo")
        navigationItem.titleView = UIImageView(image: image)
        
        //print(WarenkorbViewController.sharedInstance.warenkorbBuecher[0].autorName)
        
        for var i = 0;i < WarenkorbViewController.sharedInstance.warenkorbBuecher.count;i++ {
            betrag += WarenkorbViewController.sharedInstance.warenkorbBuecher[i].preisName
            print(WarenkorbViewController.sharedInstance.warenkorbBuecher[i].titelName)
            
        }
        
        self.summeLabel.text = "Summe (" + String(WarenkorbViewController.sharedInstance.warenkorbBuecher.count) + " Artikel):"
        self.betragLabel.text = String(format:"%.2f", betrag) + " €"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return WarenkorbViewController.sharedInstance.warenkorbBuecher.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: WarenkorbTableViewCell? = tableView.dequeueReusableCellWithIdentifier("warenkorbCell") as? WarenkorbTableViewCell
        
        let buch: Book = WarenkorbViewController.sharedInstance.warenkorbBuecher[indexPath.row]
        
        
        if cell != nil{
            cell!.buchCover.image = UIImage(named: buch.dateiName)
            cell!.buchTitel.text = buch.titelName
            cell!.buchAutor.text = buch.autorName
            cell!.buchPreis.text = "Preis: " + String(format: "%.2f", buch.preisName) + " €"
            cell!.buchAnzahl.text = "Anzahl: " + String(buch.anzahlName)
        }
        return cell!
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
