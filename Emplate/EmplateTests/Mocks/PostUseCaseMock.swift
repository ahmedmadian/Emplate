//
//  PostUseCaseMock.swift
//  EmplateTests
//
//  Created by Ahmed Madian on 12/26/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation
@testable import Emplate

class PostUseCaseMock: PostUseCase {
    func getPosts(completion: @escaping (([Post]?), Error?) -> ()) {
        completion(mockResponses.fetchPosts, nil)

    }
    
    struct MockResponses {
        var fetchPosts = [Post]()
    }
    
    struct MocKCalls {
    }
    
    var mockResponses = MockResponses()
    var mockCalls = MocKCalls()
    
    
    func getPosts(completion: @escaping (([Post]?)) -> ()) {
        completion(mockResponses.fetchPosts)
    }
    
}

