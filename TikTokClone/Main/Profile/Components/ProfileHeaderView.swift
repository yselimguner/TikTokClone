//
//  ProfileHeaderView.swift
//  TikTokClone
//
//  Created by Yavuz Selim Güner on 30.09.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing:16){
            VStack(spacing:8){
                //profile image
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width:80,height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                //username
                Text("@yavuzselimguner")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            //Stats View
            
            HStack(spacing:16){
                UserStatsView(value: 5, title: "Takip Edilen")
                UserStatsView(value: 120, title: "Takipçi")
                UserStatsView(value: 5000, title: "Beğeni Sayısı")

            }
            
            //Action Butonu
            Button {
                
            } label: {
                Text("Profili Düzenle")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .frame(width: 360,height: 32)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            Divider()

        }
    }
}

#Preview {
    ProfileHeaderView()
}

