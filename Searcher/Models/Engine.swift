//
//  Engine.swift
//  Searcher
//
//  Created by Alexey Nikandrov on 12/06/2023.
//

import Foundation
import SwiftData

@Model
class Engine {
    var id: UUID
    var title: String
    var url: String
    
    init(title: String, url: String) {
        self.id = UUID()
        self.title = title
        self.url = url
    }
}
