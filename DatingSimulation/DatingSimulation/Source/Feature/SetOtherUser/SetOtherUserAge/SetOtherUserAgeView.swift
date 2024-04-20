//
//  SetOtherUserAgeView.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/21/24.
//

import SwiftUI
import FlowKit

struct SetOtherUserAgeView: View {
    @Flow var flow
    @StateObject var viewModel = SetOtherUserAgeViewModel()

    var body: some View {
        VStack {
            Text("희망하는 상대방의\n나이을 선택해 주세요")
                .customTitleText()
            
            HStack {
                Text("15")
                    .font(.suit(18, weight: .semibold))
                    .padding(.horizontal, 10)
                
                RangedSliderView(value: $viewModel.sliderPosition, bounds: 15...50)
                    .padding(.horizontal, 10)
                
                Text("50+")
                    .font(.suit(18, weight: .semibold))
                    .padding(.horizontal, 10)
                    .onAppear {
                        // viewModel이 초기화된 이후에 sliderPosition을 viewModel의 값으로 업데이트
                        viewModel.sliderPosition = viewModel.selectedMinAge...viewModel.selectedMaxAge
                    }
            }
            .padding(.bottom, 396)
            
            Button {
                flow.push(SetOtherUserGenderView())
            } label: {
                Text("다음으로")
            }
            .padding(.bottom, 20)
            .buttonStyle(CustomOreangeButtonStyle())
            
        }
        
        
    }
}
