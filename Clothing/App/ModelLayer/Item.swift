//
//  Item.swift
//  Clothing
//
//  Created by Husnain Ali on 11/07/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
