//
//  ContentView.swift
//  SwiftUI_Tutorials
//
//  Created by Ruyha on 2023/11/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkListView()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
