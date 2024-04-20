//
//  FlashView.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI
import FlowKit

struct FlashView: View {
//    @StateObject var viewModel = FlashViewModel()
    @Flow var flow

    var body: some View {
        VStack {
            
            Image("MainLogo")
            
            Button {
                flow.push(SetNameView())
            } label: {
                Text("대화 시작하기 \(Image(systemName: "arrow.right"))")
                    .font(.suit())
                    .foregroundStyle(.white)
                    .frame(width: 328, height: 60)
                    .background(.brand)
                    .clipShape(
                        RoundedRectangle(
                            cornerRadius: 8
                        )
                    )
            }
            .padding(.bottom, 20)
            .buttonStyle(CustomOreangeButtonStyle())
        }
    }
}

#Preview {
    FlashView()
}
