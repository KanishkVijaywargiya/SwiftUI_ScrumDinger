//
//  ScrumDingerApp.swift
//  ScrumDinger
//
//  Created by KANISHK VIJAYWARGIYA on 04/10/21.
//

import SwiftUI

@main
struct ScrumDingerApp: App {
//    @State private var scrums = DailyScrum.data
    @ObservedObject private var data = ScrumData()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $data.scrums) {
                    data.save()
                }
            }
            .onAppear {
                data.load()
            }
        }
    }
}
