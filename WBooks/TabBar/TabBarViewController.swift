//
//  TabBarViewController.swift
//  WBooks
//
//  Created by Fermin Robilotte on 26/04/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTab()
    }

}

extension TabBarViewController {
    func setUpTab() {
        let home = UINavigationController(rootViewController: LibraryViewController())
        home.title = "tabBar.libraryTitle".localized()
        home.tabBarItem.image = .library()
        
        let wishlist = UINavigationController(rootViewController: LibraryViewController())
        wishlist.tabBarItem.title = "Wishlist"
        wishlist.tabBarItem.image = .wishList()
        
        let addNew = UINavigationController(rootViewController: LibraryViewController())
        addNew.tabBarItem.title = "Add New"
        addNew.tabBarItem.image = .addNew()
        
        let rentals = UINavigationController(rootViewController: LibraryViewController())
        rentals.tabBarItem.title = "Rentals"
        rentals.tabBarItem.image = .myRentals()
        
        let settings = UINavigationController(rootViewController: LibraryViewController())
        settings.tabBarItem.title = "Settings"
        settings.tabBarItem.image = .settings()
        
        viewControllers = [home, wishlist, addNew, rentals, settings]
    }
}
