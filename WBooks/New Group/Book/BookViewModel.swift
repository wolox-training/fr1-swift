//
//  BookViewModel.swift
//  WBooks
//
//  Created by Fermin Robilotte on 29/04/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit

internal class BookViewModel {
    private let _book: Book
    
    init(book: Book) {
        _book = book
    }
    
    var author: String {
        return _book.author
    }
    
    var title: String {
        return _book.title
    }
    
    func downloadImage(closure: @escaping (UIImage) -> Void) {
        let imageString = _book.image
        let imageURL = URL(string: imageString!)!
        
        let session = URLSession(configuration: .default)
        session.dataTask(with: imageURL) { (data, response, error) in
            guard error == nil else {
                print("Error downloading picture: \(String(describing: error))")
                return
            }
            guard response is HTTPURLResponse else {
                print("Couldn't get response code for some reason")
                return
            }
            guard let data = data else {
                print("Image downloaded is .none")
                return
            }
            
            DispatchQueue.main.async() {
                closure(UIImage(data: data)!)
            }
            }.resume()
    }
}
