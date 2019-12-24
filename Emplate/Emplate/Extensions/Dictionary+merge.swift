//
//  Dictionary+merge.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/24/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

extension Dictionary {
    
    mutating func merge(with dictionary: Dictionary) {
        dictionary.forEach { updateValue($1, forKey: $0) }
    }
    
    func merged(with dictionary: Dictionary) -> Dictionary {
        var dict = self
        dict.merge(with: dictionary)
        return dict
    }
}
