//
//  WarenDetailViewController.swift
//  BookShop
//
//  Created by Arthur on 17/01/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class WarenDetailViewController: UIViewController {

    @IBOutlet weak var warenImageView: UIImageView!
    var imageName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if imageName != nil{
            self.warenImageView.image = UIImage(named: imageName!)
        }
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
