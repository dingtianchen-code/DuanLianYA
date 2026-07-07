//
//  Item.swift
//  锻炼YA
//
//  Created by daveding on 2026/7/8.
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
