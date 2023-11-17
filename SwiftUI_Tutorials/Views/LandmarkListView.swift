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
                    LandmarkDetailView(landmark: landmark)
                } label: {
                    LandmarkRowView(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            //패드로 볼때 메뉴에서 선택 하라고 나옴
            // 기본값은 메뉴가 숨겨져 있음
            Text("Select a Landmark")
        }

    }
}

#Preview {
    LandmarkListView()
}
