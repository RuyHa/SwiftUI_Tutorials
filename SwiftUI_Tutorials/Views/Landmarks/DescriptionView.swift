//
//  DescriptionView.swift
//  SwiftUI_Tutorials
//
//  Created by Ruyha on 2023/11/15.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                Spacer()
                Text("California")
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            
            Divider()
            
            Text("About Turtle Rock")
                .font(.title2)
            
            Text("Descriptive text goes here.")
        }
    }
}

#Preview {
    DescriptionView()
}
