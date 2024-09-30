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
        }
    }
}

#Preview {
    ProfileHeaderView()
}

struct UserStatsView: View {
    let value:Int
    let title:String
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80,alignment: .center)
    }
}
