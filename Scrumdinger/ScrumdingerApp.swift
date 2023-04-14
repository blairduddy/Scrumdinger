//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Blair Duddy on 2023-04-12.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
