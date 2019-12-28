//
//  PostCell.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/25/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import UIKit
import Kingfisher

class PostCell: UITableViewCell {
    
    //MARK: - Outlet
    @IBOutlet weak var shopNameLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var itemSubtiltle: UILabel!
    @IBOutlet weak var currentPriceLabel: UILabel!
    @IBOutlet weak var currentPriceContent: UILabel!
    @IBOutlet weak var pastPriceLabel: UILabel!
    @IBOutlet weak var pastPriceContent: UILabel!
    @IBOutlet weak var savedAmountLabel: UILabel!
    @IBOutlet weak var savedAmountContent: UILabel!
    @IBOutlet weak var expirationDateLabel: UILabel!

    //MARK: - Methods
    static func instantiateFromNib(with viewModel: PostCellViewModel) -> PostCell {
        let cell = UINib(nibName: typeName, bundle: .main).instantiate(withOwner: self, options: nil).first as! PostCell
        cell.config(with: viewModel)
        return cell
    }
    
    private func config(with viewModel: PostCellViewModel) {
        shopNameLabel.text = viewModel.shopName
        posterImageView.kf.setImage(with: URL.init(string: viewModel.thumbnailStringURL ?? ""), options: [
               .scaleFactor(UIScreen.main.scale),
               .transition(.fade(1)),
               .cacheOriginalImage
               ])
        itemSubtiltle.text = viewModel.itemSubtitle
        currentPriceLabel.text = viewModel.currentPriceHeader
        currentPriceContent.text = viewModel.currentPrice
        pastPriceLabel.text = viewModel.currentPriceHeader
        pastPriceContent.text = viewModel.pastPrice
        savedAmountLabel.text = viewModel.savedAmountHeader
        savedAmountContent.text = viewModel.savedAmount
        expirationDateLabel.text = viewModel.expirationDate
    }
    
}
