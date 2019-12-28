//
//  PostListViewController.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/25/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import UIKit

class PostListViewController: UIViewController {
    
    // MARK:- Properties
    let viewModel: PostsViewModel
    lazy var refreshControl: UIRefreshControl = {
        let control = UIRefreshControl()
        control.addTarget(self, action: #selector(refreshTableView(_:)), for: .valueChanged)
        return control
    }()
    
    // MARK:- Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK:- Initializers
    init(viewModel: PostsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK:- UIViewController Callbacks
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        viewModel.loadView { (succeed) in
            self.removeActivityIndicator()
            if succeed {
                self.tableView.reloadData()
            } else {
                self.showAlert(message: self.viewModel.errorMessage)
            }
        }
    }
    
    // MARK:- Methods
    private func setupView() {
        showActivityIndicator()
        tableView.refreshControl = refreshControl
    }
    
    private func registerTableViewCells() {
        tableView.register(UINib(nibName: PostCell.typeName, bundle: Bundle.main), forCellReuseIdentifier: PostCell.typeName)
    }
    
    @objc func refreshTableView(_ sender: Any) {
        viewModel.loadView { (succeed) in
            if succeed {
                self.tableView.reloadData()
            } else {
                self.showAlert(message: self.viewModel.errorMessage)
            }
            self.refreshControl.endRefreshing()
        }
    }
    
}

// MARK:- UITableViewDataSource

extension PostListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.postsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let postData = viewModel.post(for: indexPath)
        let cell = PostCell.instantiateFromNib(with: postData)
        return cell
    }
    
}
