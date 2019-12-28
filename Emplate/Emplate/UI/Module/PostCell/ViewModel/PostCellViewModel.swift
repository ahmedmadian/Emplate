//
//  PostCellViewModel.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/25/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation
class PostCellViewModel {
    
    //MARK: - Properties
    var shopName: String?
    var thumbnailStringURL: String?
    var itemSubtitle: String?
    var currentPriceHeader: String?
    var currentPrice: String?
    var pastPriceHeader: String?
    var pastPrice: String?
    var savedAmountHeader: String?
    var savedAmount: String?
    var expirationDate: String?
    
    //MARK:- Initilizar
    init(with post: Post) {
        self.shopName = post.name
        self.thumbnailStringURL = post.thumbnail?.urls.mobile
        self.itemSubtitle = post.name
        self.currentPrice = nil //TODO:-  formate(number: amount) // Missing content in DTO
        if let _ = currentPrice {
            self.currentPriceHeader  = "Pris:"
        }
        self.pastPrice  = nil //TODO:-  formate(number: amount) // Missing content in DTO
        if let _ = pastPrice {
            self.pastPriceHeader = "Fer:"
        }
        self.savedAmount  = nil //TODO:-  formate(number: amount) // Missing content in DTO
        if let _ = savedAmount {
            self.savedAmountHeader = "Spar:"
        }
        self.expirationDate = "Expires on \(getDate(date: post.postperiods?.first?.stop))"
    }
    
    //MARK: - Methods
    private func getDate(date: String?) -> String {
        return DateConvertor.shared.getConverted(dateString: date ?? "", fromFormat: .yyyyMMddTHHmmssZ, toFormat: .MMddyyyy)
    }
    
    private func formate(number: Double) -> String? {
        return CurrencyConverter.shared.formatAsCurrency(from: number, currencyCode: .Euro)
    }
}
