//
//  LandmarkList.swift
//  SwiftUI_Tutorials
//
//  Created by Ruyha on 2023/11/15.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        
        // Landmark model 에서 아이디 값을 강제 해서 아이디가 따로 필요 없는듯 하다.
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetailView()
                } label: {
                    LandmarkRowView(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }

    }
}

#Preview {
    LandmarkListView()
}
