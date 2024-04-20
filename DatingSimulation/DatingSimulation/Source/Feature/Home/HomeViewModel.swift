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
                profileImage: "20woman1",
                name: "유지인",
                mbti: "ENFP",
                some: "친구",
                relationship: "썸"
            ),
            AfterChat(
                profileImage: "20woman4",
                name: "김서현",
                mbti: "ISTP",
                some: "회사 동료",
                relationship: "썸"
            ),
        ]
    }
    
    
    
}
