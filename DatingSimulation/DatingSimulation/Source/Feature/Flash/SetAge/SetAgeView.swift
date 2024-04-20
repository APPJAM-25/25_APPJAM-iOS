//
//  SetAgeView.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI
import FlowKit

struct SetAgeView: View {
    @Flow var flow
    @StateObject var viewModel = SetAgeViewModel()
    
    var body: some View {
        CustomTextField(
            text: "나이를 입력 해주세요",
            input: $viewModel.age,
            placeholder: "나이를 입력 해주세요"
        )
        .keyboardType(.numberPad)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.top, 85)
        
        
        Spacer()
        
        Button {
            flow.push(SetGenderView())
        } label: {
            Text("다음으로")
        }
        .padding(.bottom, 20)
        .buttonStyle(CustomOreangeButtonStyle())
    }
    
}

#Preview {
    SetAgeView()
}
