//
//  CurrentUserProfileView.swift
//  TikTokClone
//
//  Created by Yavuz Selim Güner on 30.09.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing:2){
                    //profile header
                    ProfileHeaderView()
                    
                    //Post Grid View
                    PostGridView()
                    
                }
                .padding(.top)
            }
            .navigationTitle("Profil")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
