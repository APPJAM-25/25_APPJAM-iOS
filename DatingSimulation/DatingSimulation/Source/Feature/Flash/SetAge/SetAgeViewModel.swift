//
//  SetAgeViewModel.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI
import FlowKit

class SetAgeViewModel: ObservableObject {
    @Flow var flow
    
    @Published var age: String = ""

}
