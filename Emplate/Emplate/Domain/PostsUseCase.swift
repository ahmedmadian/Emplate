//
//  PostsUseCase.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/25/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation

protocol PostUseCase {
    func getPosts(completion: @escaping (([Post]?), Error?) -> ())
}

class PostsUseCase: PostUseCase {
    //MARK:- Properties
    private let postsRepository: PostRepository
    
    // MARK:- Initializers
    init(postsRepository: PostRepository) {
        self.postsRepository = postsRepository
    }
    
    //MARK:- PostUseCase
    func getPosts(completion: @escaping (([Post]?), Error?) -> ()) {
        postsRepository.getAllPosts { (posts, error) in
            completion(posts, error)
        }
    }
}
