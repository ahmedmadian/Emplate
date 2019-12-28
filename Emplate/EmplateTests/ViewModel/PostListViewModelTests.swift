//
//  PostCellViewModelTests.swift
//  EmplateTests
//
//  Created by Ahmed Madian on 12/26/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import XCTest
@testable import Emplate

class PostListViewModelTests: XCTestCase {

    var mockUseCase: PostUseCaseMock!
    var viewModel: PostsViewModel!

    override func setUp() {
        mockUseCase = PostUseCaseMock()
        viewModel = PostsViewModel(usecase: mockUseCase)
    }

    func test_vehicles_Empty_Response() {
        mockUseCase.mockResponses.fetchPosts = []
        viewModel.loadView {_ in }
        XCTAssertTrue(viewModel.postsCount == 0)
    }

}
