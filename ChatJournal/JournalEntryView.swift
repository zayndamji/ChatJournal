//
//  JournalEntryView.swift
//  ChatJournal
//
//  Created by Zayn Damji on 7/1/25.
//

import SwiftUI
import SwiftData

struct JournalEntryView: View {
    @Bindable var entry: JournalEntry

    var body: some View {
        Form {
            Section(header: Text("Entry")) {
                TextEditor(text: $entry.content)
                    .frame(minHeight: 200)
            }
            
            Text("Modified: \(entry.timeModified, format: Date.FormatStyle(date: .numeric, time: .standard))")
        }
        .navigationTitle("\(entry.timeCreated, format: Date.FormatStyle(date: .numeric, time: .standard))")
        .onDisappear {
            entry.timeModified = Date()
        }
    }
}
