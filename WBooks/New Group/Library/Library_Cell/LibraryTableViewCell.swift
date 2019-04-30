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
    
    @IBOutlet weak var bodyBook: UIView! {
        didSet {
            bodyBook.layer.cornerRadius = 10
        }
    }
}

internal extension LibraryTableViewCell {
    
    func bind(viewModel: BookViewModel) {
        titleLabel.text = viewModel.title
        authorLabel.text = viewModel.author
        frontBookImage.image = UIImage(named: "img_book1")
        //viewModel.downloadImage(closure: {
        //    self.frontBookImage.image = $0
        //})
    }
}
