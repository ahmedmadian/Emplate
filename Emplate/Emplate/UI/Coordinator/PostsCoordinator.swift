//
//  PostsCoordinator.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/25/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import UIKit

class PostsCoordinator: Coordinator{
    private weak var navigationController: UINavigationController?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        guard let navigationController = navigationController else { return }
        
        let emplateService = EmplateRemoteDateSource.shared
        let dataRepo = PostDataRepository(remoteDataSource: emplateService)
        let usecase = PostsUseCase(postsRepository: dataRepo)
        let viewModel = PostsViewModel(usecase: usecase)
        let containerViewController = PostListViewController(viewModel: viewModel)
        
        navigationController.pushViewController(containerViewController, animated: true)
    }
    
    
}
