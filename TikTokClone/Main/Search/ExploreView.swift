//
//  ExploreView.swift
//  TikTokClone
//
//  Created by Yavuz Selim Güner on 30.09.2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 16){
                    ForEach(0..<20){ user in
                        UserCell()
                    }
                }
            }
            .navigationTitle("Kişiler")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}
