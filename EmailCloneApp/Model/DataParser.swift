//
//  DataParser.swift
//  EmailCloneApp
//
//  Created by Anas Riahi on 7/30/20.
//  Copyright © 2020 Anas Riahi. All rights reserved.
//

import Foundation

class DataParser {
    
    private let _baseUrl = "https://run.mocky.io/v3/4d635f02-3d2c-4c19-a149-9bb83a185374/"
    
    var completion: (([User]) -> Void)?
    
    
    func get(completion: (([User]) -> Void)?) {
        self.completion = completion
        let urlString = _baseUrl
        guard let url = URL(string: urlString) else {completion?([]); return }
        sessionRequest(url: url)
    }
    
    func sessionRequest(url: URL) {
        URLSession.shared.dataTask(with: url, completionHandler: sessionResponse).resume()
    }
    
    func sessionResponse(_ data: Data?, _ response: URLResponse?, _ error: Error?) {
        DispatchQueue.main.async {
            if let dataResponse = data {
                do {
                    let result = try JSONDecoder().decode([User].self, from: dataResponse)
                    self.completion?(result)
                } catch {
                    print(error.localizedDescription)
                    self.completion?([])
                }
            }
            if let err = error {
                print(err.localizedDescription)
                self.completion?([])
            }
        }
    }
}
