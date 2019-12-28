//
//  PostField.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/24/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation

class PostField: Codable {
    let type: String?
    let id, postID, postFieldTypeID, order: Int?
    let content: String?
    let createdAt, updatedAt: String?

    enum CodingKeys: String, CodingKey {
        case type, id
        case postID = "post_id"
        case postFieldTypeID = "postFieldType_id"
        case order, content
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}
