//
//  EmplateAPIService.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/26/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation

protocol RemoteDataSource {
    func fetchPosts(with endPoint: Endpoint, completion: @escaping (([Post]?), Error?) -> ())
}

final class EmplateAPIService: BaseAPIService, RemoteDataSource {
    //MARK:- Properties
    static let shared = EmplateAPIService()
    
    // MARK:- Initializers
    private override init() {}
    
    //MAERK:- Remote Data Source
    func fetchPosts(with endPoint: Endpoint, completion: @escaping (([Post]?), Error?) -> ()) {
        self.execute(endPoint: endPoint) { (result: Result<[Post], Error>) in
            switch result {
            case .success(let posts):
                completion(posts, nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
    
}
