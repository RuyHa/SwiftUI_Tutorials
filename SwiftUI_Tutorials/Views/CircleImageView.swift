//
//  CircleImage.swift
//  SwiftUI_Tutorials
//
//  Created by Ruyha on 2023/11/15.
//

import SwiftUI

struct CircleImageView: View {
    
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImageView(image: Image("turtlerock"))
}
