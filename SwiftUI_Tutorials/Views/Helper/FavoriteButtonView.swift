//
//  FavoriteButtonView.swift
//  SwiftUI_Tutorials
//
//  Created by Ruyha on 11/17/23.
//

import SwiftUI

struct FavoriteButtonView: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }

    }
}

#Preview {
    FavoriteButtonView(isSet: .constant(true))
}
