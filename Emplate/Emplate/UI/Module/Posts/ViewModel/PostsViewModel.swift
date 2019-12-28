//
//  PostsViewModel.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/25/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation

class PostsViewModel {
    
    //MARK:- Private Fields
    private var postsViewModel: [PostCellViewModel]
    private let postUseCase: PostUseCase
    
    //MARK:- Properties
    var errorMessage: String
    var postsCount: Int {
        return postsViewModel.count
    }
    
    // MARK:- Initializers
    init(usecase: PostUseCase) {
        postsViewModel = []
        self.postUseCase = usecase
        errorMessage = ""
    }
    
    // MARK:- Methods
    func post(for indexPath: IndexPath) -> PostCellViewModel{
        return postsViewModel[indexPath.row]
    }
    
    func loadView(completion: @escaping (Bool) -> ()) {
        postUseCase.getPosts { (posts, error) in
            if let posts = posts {
                self.postsViewModel = posts.map { PostCellViewModel(with: $0) }
                completion(true)
            } else if let error = error{
                self.errorMessage = error.localizedDescription
                completion(false)
            }
        }
    }
    
}
