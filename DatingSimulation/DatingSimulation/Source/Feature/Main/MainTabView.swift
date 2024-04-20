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
                    .tossTabItem("홈", Image(systemName: "house.fill"))
                InfoView()
                    .tossTabItem("정보", Image(systemName: "info.circle.fill"))
                FeedBackView()
                    .tossTabItem("대화 기록", Image(systemName: "newspaper.fill"))
                MyPageView()
                    .tossTabItem("마이페이지", Image(systemName: "person.fill"))

            }
        }
    }
    
}
