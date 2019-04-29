//
//  BookRepository.swift
//  WBooks
//
//  Created by Fermin Robilotte on 29/04/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import Alamofire

public class BookRepository {
    
    public func fetchBooks(onSuccess: @escaping ([Book]) -> Void, onError: @escaping (Error) -> Void) {
        let url = URL(string: "https://swift-training-backend.herokuapp.com/books")!
        
        // make request to url with get method
        request(url, method: .get).responseJSON {
            response in
                //check if request was succesful
                switch response.result {
                // request was successful
                case .success(let value):
                    //check if data is valid, if not call error function
                    guard let JSONbooks = try? JSONSerialization.data(
                        withJSONObject: value, options: []) else {
                            onError(BookError.decodeError)
                            return
                    }
                    //check if data is valid, if not call error function
                    guard let books = try? JSONDecoder().decode([Book].self, from: JSONbooks) else {
                        onError(BookError.decodeError)
                        return
                    }
                    // request was successful and data is valid so we call success function
                    onSuccess(books)
                    
                case .failure(let error):
                    // request failed so we call the error function
                    onError(error)
                }
        }

    }
}
