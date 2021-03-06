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

class LibraryViewController: UIViewController {
    private let _libraryView: LibraryView = LibraryView.loadFromNib()!
    
    private var booksArray: Array = [["title": "A Little Bird Told Me", "author":"Timothy Cross", "img":"img_book1"], ["title": "When the Doves Disappeared", "author":"Sofi Oksanen", "img":"img_book2"],["title": "The Best Book in the World", "author":"Peter Sjernstrom", "img":"img_book3"], ["title": "Be Creative", "author":"Tony Alcazar", "img":"img_book4"], ["title": "Redesign the Web", "author":"Liliana Castilla", "img":"img_book5"]]
    
    override func loadView() {
        view = _libraryView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpCells()
        setUpNavigation()
    }
    
}

extension LibraryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return booksArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = _libraryView.booksTable.dequeue(cell: LibraryTableViewCell.self, for: indexPath)!
        
        let dict = booksArray[indexPath.row]
        
        cell.titleLabel.text = dict["title"]
        cell.authorLabel.text = dict["author"]
        cell.frontBookImage.image = UIImage(named: dict["img"]!)
        cell.bodyBook.layer.cornerRadius = 10
        
        return cell
    }
    
}

fileprivate extension LibraryViewController {
    func setUpCells() {
        _libraryView.booksTable.register(cell: LibraryTableViewCell.self)
        _libraryView.backgroundColor = UIColor.backgroundLightBlue()
        _libraryView.booksTable.delegate = self
        _libraryView.booksTable.dataSource = self
    }
    
    func setUpNavigation() {
        let backgroundImg = UIImage(named: "bc_nav bar")
        
        navigationController?.navigationBar.setBackgroundImage(backgroundImg, for: .default)
        
        let rightButton = UIBarButtonItem(image: .search(), style: .done, target: self,
                                          action: #selector(rightButtonHandler(sender:)))
        navigationItem.rightBarButtonItem = rightButton
        rightButton.tintColor = .white
        
        let leftButton = UIBarButtonItem(image: .notification(), style: .done, target: self,
                                         action: #selector(leftButtonHandler(sender:)))
        navigationItem.leftBarButtonItem = leftButton
        leftButton.tintColor = .white
        
        title = "library.title".localized()
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }
    
    @objc
    func rightButtonHandler(sender: UIBarButtonItem) {
        //TODO
    }
    
    @objc
    func leftButtonHandler(sender: UIBarButtonItem) {
        //TODO
    }
    
}
