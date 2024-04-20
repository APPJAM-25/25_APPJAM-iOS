//
//  HomeView.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI
import FlowKit

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    @Flow var flow
    var body: some View {
        HStack {
            List {
                Section {
                    HStack {
                        Text("지난 대화")
                            .font(.suit(16, weight: .medium))
                        
                        Spacer()
                        
                        Button {
                            print("asdf")
                        } label: {
                            Image(systemName: "chevron.right")
                            
                        }
                    }
                    ForEach(viewModel.afterChat) { index in
                        HStack {
                            Image(index.profileImage)
                                .resizable()
                                .font(.title)
                                .clipShape(Circle())
                                .frame(width: 60, height: 60)
                            VStack(alignment: .leading) {
                                Text("\(index.name) • \(index.mbti) • \(index.some) • \(index.relationship)")
                                    .font(.suit())
                            }
                        }              
                        .frame(height: 80)

                    }
                }
                
                Section {
                    Text("새 대화")
                        .font(.suit(16, weight: .medium))
                    Button {
                        print(flow.push(SetOtherUserAgeView()))
                    } label: {
                        Text("대화 상대 설정하기")
                    }
                    .buttonStyle(CustomOreangeButtonStyle())
                }
            }
        }
        .onAppear {
            viewModel.mockAfterChat()
        }
    }
}

#Preview {
    MainTabView()
}
