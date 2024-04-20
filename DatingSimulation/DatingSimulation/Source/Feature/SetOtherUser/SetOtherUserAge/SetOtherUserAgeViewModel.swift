//
//  SetOtherUserAgeViewModel.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/21/24.
//

import SwiftUI

class SetOtherUserAgeViewModel: ObservableObject {
    @Published var sliderPosition: ClosedRange<Float> = 15...50

    @Published var age: Double = 0
    @Published var maxAge: Double = 0
    @Published var minAge: Double = 0
    @Published var selectedMinAge: Float = 15
    @Published var selectedMaxAge: Float = 50
}
