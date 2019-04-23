//
//  LibraryTableViewCell.swift
//  WBooks
//
//  Created by Fermin Robilotte on 22/04/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import Foundation
import WolmoCore

class LibraryTableViewCell: UITableViewCell, NibLoadable {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var frontBookImage: UIImageView!
    
    @IBOutlet weak var bodyBook: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
