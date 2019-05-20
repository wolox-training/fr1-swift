//
//  Book.swift
//  WBooks
//
//  Created by Fermin Robilotte on 29/04/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation

public struct Book: Codable {
    
    let id: Int
    let author: String
    let genre: String
    let title: String
    let year: String
    let status: String
    let image: String?
    
    init(id: Int, genre: String, title: String, author: String, image: String?, year: String, status: String) {
        self.id = id
        self.genre = genre
        self.title =  title
        self.author = author
        self.image = image
        self.year = year
        self.status = status
    }
}
