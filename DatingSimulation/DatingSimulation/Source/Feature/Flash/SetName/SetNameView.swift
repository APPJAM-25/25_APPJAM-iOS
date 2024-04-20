//
//  SetNameView.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI
import FlowKit

struct SetNameView: View {
    @Flow var flow
    @StateObject var viewModel = SetNameViewModel()
    var body: some View {
        CustomTextField(
            text: "이름",
            input: $viewModel.name,
            placeholder: "이름을 입력 해주세요"
        )
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.top, 85)
        
        Spacer()
        
        Button {
            flow.push(SetAgeView())
        } label: {
            Text("대화 시작하기 \(Image(systemName: "arrow.right"))")
        }
        .padding(.bottom, 20)
        .buttonStyle(CustomOreangeButtonStyle())
    }
}

#Preview {
    SetNameView()
}
