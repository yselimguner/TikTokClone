//
//  NotificationCell.swift
//  TikTokClone
//
//  Created by Yavuz Selim Güner on 30.09.2024.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32,height: 32)
                .foregroundStyle(Color(.systemGray5))
            
            HStack{
                Text("Yavuz Selim Güner")
                    .font(.footnote)
                    .fontWeight(.semibold)  +
                Text(" likedd one of your videossdfasdasdsad ")
                    .font(.footnote) +
                
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Spacer()
            
            Rectangle()
                .frame(width: 48,height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
