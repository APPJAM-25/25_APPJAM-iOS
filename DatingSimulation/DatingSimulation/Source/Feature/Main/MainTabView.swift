//
//  MainTabView.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI
import OpenTDS
import FlowKit

struct MainTabView: View {
    @Flow var flow
    
    var body: some View {
        NavigationView {
            TossTabView {
                HomeView()
                    .tossTabItem("홈", Image("house.fill"))
                InfoView()
                    .tossTabItem("정보", Image("info.circle.fill"))
                RecodeChatView()
                    .tossTabItem("대화 기록", Image("newspaper.fill"))
                MyPageView()
                    .tossTabItem("마이페이지", Image("person.fill"))

            }
        }
    }
    
}
