//
//  PostPeriod.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/24/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation

class PostPeriod: Codable {
    let type: String?
    let id: Int?
    let start, stop, createdAt, updatedAt: String?

    enum CodingKeys: String, CodingKey {
        case type, id, start, stop
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}
