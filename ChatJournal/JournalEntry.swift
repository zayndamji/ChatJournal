//
//  JournalEntry.swift
//  ChatJournal
//
//  Created by Zayn Damji on 7/1/25.
//

import Foundation
import SwiftData

@Model
final class JournalEntry {
    var timeCreated: Date
    var timeModified: Date
    var content: String
    
    init(timeCreated: Date) {
        self.timeCreated = timeCreated
        self.timeModified = timeCreated
        self.content = ""
    }
}
