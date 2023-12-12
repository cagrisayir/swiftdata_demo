//
//  DataItem.swift
//  swiftdata_demo
//
//  Created by Omer Cagri Sayir on 12.12.2023.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    var id: String
    var creationDate: Date
    
    init() {
        self.id = UUID().uuidString
        self.creationDate = Date()
    }
}
