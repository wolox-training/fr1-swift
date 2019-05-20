//
//  LibraryViewModel.swift
//  WBooks
//
//  Created by Fermin Robilotte on 30/04/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation

class LibraryViewModel {
    private let _repository: BookRepository
    var arrayBooks: [BookViewModel] = []
    
    init (repository: BookRepository) {
        _repository = repository
    }
    
    func getBooks(reloadTable: @escaping () -> Void) {
        _repository.fetchBooks(onSuccess: { [unowned self] books in
            self.arrayBooks = books.map{book in BookViewModel(book: book)}
            reloadTable()
        }) { (error) in
            print (error)
        }
    }
}
