//
//  DatingSimulationApp.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI
import FlowKit

@main
struct DatingSimulationApp: App {
    var body: some Scene {
        WindowGroup {   
            FlowPresenter(
                rootView: FlashView()
            )
        }
    }
}
