//
//  NotificationsView.swift
//  TikTokClone
//
//  Created by Yavuz Selim Güner on 30.09.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack{
            LazyVStack(spacing: 24){
                ForEach(0..<10){notification in
                    NotificationCell()
                }
            }
            .navigationTitle("Gelen Kutusu")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    NotificationsView()
}
