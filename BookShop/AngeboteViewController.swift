//
//  AngeboteViewController.swift
//  BookShop
//
//  Created by Arthur on 05/01/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class AngeboteViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "onlyLogo")
        navigationItem.titleView = UIImageView(image: image)
        
        if self.revealViewController() != nil{
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
