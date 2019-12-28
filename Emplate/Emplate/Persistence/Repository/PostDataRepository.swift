//
//  PostDataRepository.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/25/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation

protocol PostRepository {
    func getAllPosts(completion: @escaping (([Post]?), Error?) -> ())
}

class PostDataRepository: PostRepository{
    //MARK:- Properties
    private let remoteDataSource: RemoteDataSource
    
    // MARK:- Initializers
    init(remoteDataSource: RemoteDataSource) {
        self.remoteDataSource = remoteDataSource
    }
    
    //MARK:- Post Repository
    func getAllPosts(completion: @escaping (([Post]?), Error?) -> ()) {
        remoteDataSource.fetchPosts(with: EndPointFactory.posts ) { (posts, error) in
            completion(posts,error)
        }
    }
}
