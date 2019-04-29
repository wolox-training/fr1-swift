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
    let year: Int
    let status: String
    let image: String?
    
    enum BookKey: String, CodingKey {
        case id = "id"
        case title = "title"
        case author = "author"
        case genre = "genre"
        case year = "year"
        case image = "image"
    }
    
    public init(from: Decoder) {
        let container = try! from.container(keyedBy: BookKey.self)
        id = try! container.decode(Int.self, forKey: .id)
        title = try! container.decode(String.self, forKey: .title)
        author = try! container.decode(String.self, forKey: .author)
        genre = try! container.decode(String.self, forKey: .genre)
        year = try! container.decode(Int.self, forKey: .year)
        image = try! container.decode(String.self, forKey: .image)
    }

}
