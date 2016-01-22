//
//  WarenkorbTableViewCell.swift
//  BookShop
//
//  Created by Arthur on 21/01/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class WarenkorbTableViewCell: UITableViewCell {

    @IBOutlet weak var buchCover: UIImageView!
    @IBOutlet weak var buchTitel: UILabel!
    @IBOutlet weak var buchAutor: UILabel!
    @IBOutlet weak var buchAnzahl: UILabel!
    @IBOutlet weak var buchPreis: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
