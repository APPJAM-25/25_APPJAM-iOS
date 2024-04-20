//
//  CustomOreangeButtonStyle.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI

struct CustomOreangeButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 328, height: 60)
            .font(.system(size: 18, weight: .semibold))
            .foregroundColor(.white)
            .background(Color.brand)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut(duration: 0.1))
    }
}
