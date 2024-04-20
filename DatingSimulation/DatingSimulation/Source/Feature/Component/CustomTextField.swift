//
//  CustomTextField.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI

struct CustomTextField: View {
    let text: String
    let input: Binding<String>
    let placeholder: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .font(.suit(22, weight: .bold))
                .padding(.bottom, 40)
            
            TextField(
                placeholder,
                text: input
            )
            .frame(width: 342)
            .padding(.top, 4)
            
            Rectangle()
                .frame(width: 343, height: 1)
                .foregroundStyle(.gray)
        }
    }
}
