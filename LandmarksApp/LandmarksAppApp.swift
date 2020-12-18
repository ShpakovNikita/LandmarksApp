//
//  LandmarksAppApp.swift
//  LandmarksApp
//
//  Created by Nikita Shpakov on 12/16/20.
//

import SwiftUI

@main
struct LandmarksAppApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
