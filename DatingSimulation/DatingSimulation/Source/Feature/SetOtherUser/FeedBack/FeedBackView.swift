//
//  FeedBackView.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/21/24.
//

import SwiftUI

struct FeedBackView: View {
    var body: some View {
        ScrollView {
            Image("Feedback")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.bottom, 40)
        }
    }
}

#Preview {
    FeedBackView()
}
