//
//  LibraryViewController.swift
//  WBooks
//
//  Created by Fermin Robilotte on 22/04/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore

final class LibraryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let _libraryView: LibraryView = LibraryView.loadFromNib()!
    
    var booksArray: Array = [["tittle": "A Little Bird Told Me", "author":"Timothy Cross"], ["tittle": "When the Doves Disappeared", "author":"Sofi Oksanen"],["tittle": "The Best Book in the World", "author":"Peter Sjernstrom"], ["tittle": "Be Creative", "author":"Tony Alcazar"], ["tittle": "Redesign the Web", "author":"Liliana Castilla"]]
    
    override func loadView() {
        view = _libraryView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpCells()
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return booksArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = _libraryView.booksTable.dequeue(cell: LibraryTableViewCell.self, for: indexPath)!
        
        let dict = booksArray[indexPath.row]
        
        cell.titleLabel.text = dict["tittle"]
        cell.authorLabel.text = dict["author"]
        cell.bodyBook.layer.cornerRadius = 10
        
        return cell
    }
    
}

fileprivate extension LibraryViewController {
    func setUpCells() {
        _libraryView.booksTable.register(cell: LibraryTableViewCell.self)
        _libraryView.backgroundColor = UIColor(red:0.92, green:0.96, blue:0.98, alpha:1)
        
        _libraryView.booksTable.delegate = self
        _libraryView.booksTable.dataSource = self
        
    }
    
}
