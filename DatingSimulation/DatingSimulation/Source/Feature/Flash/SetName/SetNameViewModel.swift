//
//  SetNameViewModel.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI
import FlowKit

class SetNameViewModel: ObservableObject {
    @Flow var flow
    
    @Published var name: String = ""
}
