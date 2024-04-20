//
//  FlashViewModel.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI
import FlowKit

class FlashViewModel: ObservableObject {
    @Flow var flow

    func tapDidStartChat() {
//        flow.replace(
//            [
//                MainTabView()
//            ]
//        )
        flow.push(SetNameView())
    }
}
