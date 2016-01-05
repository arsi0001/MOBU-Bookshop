//
//  Startseite.swift
//  BookShop
//
//  Created by Arthur on 04/01/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import Foundation

class Startseite    :   UITableViewController{
    override func viewDidLoad() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
}