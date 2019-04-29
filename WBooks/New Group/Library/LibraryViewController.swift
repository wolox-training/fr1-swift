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
    private let _viewModel = LibraryViewModel()
    
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
