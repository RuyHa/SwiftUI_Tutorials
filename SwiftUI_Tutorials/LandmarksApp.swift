//
//  SwiftUI_TutorialsApp.swift
//  SwiftUI_Tutorials
//
//  Created by Ruyha on 2023/11/15.
//

import SwiftUI

@main

/**
 프로젝트가 시작되는 지점
 */
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
