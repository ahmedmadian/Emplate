//
//  Response.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/24/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation

class Post: Codable {
    let type: String?
    let id: Int
    let name: String?
    let approved: Bool?
    let collectible: Bool?
    let parameters: String?
    let url: String?
    let createdAt, updatedAt: String?
    let deletedAt: String?
    let postfields: [PostField]?
    let postperiods: [PostPeriod]?
    let thumbnail: Thumbnail?

    enum CodingKeys: String, CodingKey {
        case type, id, name, approved, collectible, parameters, url
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case deletedAt = "deleted_at"
        case postfields, postperiods, thumbnail
    }
}
