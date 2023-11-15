//
//  LandmarkRow.swift
//  SwiftUI_Tutorials
//
//  Created by Ruyha on 2023/11/15.
//

import SwiftUI

struct LandmarkRowView: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

/**
 프리뷰는 놀랍게도 여러개를 만들 수 있다.
 아래와 같은 방식으로 이름도 지정이 가능하다.
 */
#Preview("\(landmarks[0].name)") {
    LandmarkRowView(landmark: landmarks[0])
}

#Preview("\(landmarks[1].name)") {
    LandmarkRowView(landmark: landmarks[1])
}

/**
 그룹으로 묶어서 볼 수도 있다.
 */
#Preview("Group") {
    Group {
        LandmarkRowView(landmark: landmarks[0])
        LandmarkRowView(landmark: landmarks[1])
    }
}
