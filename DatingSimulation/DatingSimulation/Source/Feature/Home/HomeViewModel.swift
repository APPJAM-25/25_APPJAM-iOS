//
//  HomeViewModel.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI
import FlowKit

class HomeViewModel: ObservableObject {
    @Flow var flow
    
    @Published var afterChat = [AfterChat]()
    
    func mockAfterChat() {
        afterChat = [
            AfterChat(
                profileImage: "person",
                name: "최시훈",
                mbti: "ESTP",
                some: "썸",
                relationship: "직장 동료"
            ),
            AfterChat(
                profileImage: "person",
                name: "최시훈",
                mbti: "ESTP",
                some: "썸",
                relationship: "직장 동료"
            ),
            AfterChat(
                profileImage: "person",
                name: "최시훈",
                mbti: "ESTP",
                some: "썸",
                relationship: "직장 동료"
            ),
            
        ]
    }
    
    
    
}
