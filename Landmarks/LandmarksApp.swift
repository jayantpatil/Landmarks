//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jayant D Patil on 27/07/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
