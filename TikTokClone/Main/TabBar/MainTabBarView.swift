//
//  MainTabBarView.swift
//  TikTokClone
//
//  Created by Yavuz Selim Güner on 29.09.2024.
//

import SwiftUI

struct MainTabBarView: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Ana Ekran")
                    }
                }
                .onAppear{selectedTab = 0}
                .tag(0)
            
            Text("Arkadaşlar")
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 1 ? "person.2.fill" : "person.2")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        Image(systemName: "person.2")
                        Text("Arkadaşlar")
                    }
                }
                .onAppear{selectedTab = 1}
                .tag(1)
            
            Text("Medya Yüklle")
                .tabItem {
                    VStack{
                        Image(systemName: "plus")
                        
                    }
                }
            
            Text("Notifications")
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("Okunmamış")
                    }
                }
                .onAppear{selectedTab = 3}
                .tag(3)
            
            Text("Profile")
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                            .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        Text("Profil")
                    }
                }
                .onAppear{selectedTab = 4}
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    MainTabBarView()
}
