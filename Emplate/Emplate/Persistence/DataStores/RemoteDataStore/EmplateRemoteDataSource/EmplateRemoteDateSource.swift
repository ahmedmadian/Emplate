//
//  EmplateAPIService.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/26/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation

protocol EmplateRemoteDataSourceProtocol: RemoteDataSource {
    func fetchPosts(with endPoint: Endpoint, completion: @escaping (([Post]?), Error?) -> ())
}

final class EmplateRemoteDateSource: EmplateRemoteDataSourceProtocol {
    //MARK:- Properties
    static let shared = EmplateRemoteDateSource()
    
    // MARK:- Initializers
    private init() {}
    
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
