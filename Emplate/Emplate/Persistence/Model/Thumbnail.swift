//
//  Thumbnail.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/24/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation

class Thumbnail: Codable {
    let type: String
    let id: Int
    let name: String?
    let filetype: String
    let width, height: Int
    let urls: Urls
}
