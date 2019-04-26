//
//  UIImageExtensions.swift
//  WBooks
//
//  Created by Fermin Robilotte on 26/04/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    
    static func search() -> UIImage {
        return UIImage(named: "ic_search")!
    }
    
    static func notification() -> UIImage {
        return UIImage(named: "ic_notifications")!
    }
    
    static func library() -> UIImage {
        return UIImage(named: "ic_library active")!
    }
    
    static func wishList() -> UIImage {
        return UIImage(named: "ic_wishlist")!
    }
    
    static func addNew() -> UIImage {
        return UIImage(named: "ic_add new")!
    }
    
    static func myRentals() -> UIImage {
        return UIImage(named: "ic_myrentals")!
    }
    
    static func settings() -> UIImage {
        return UIImage(named: "ic_settings")!
    }
}
