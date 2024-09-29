//
//  FeedCell.swift
//  TikTokClone
//
//  Created by Yavuz Selim Güner on 29.09.2024.
//

import SwiftUI

struct FeedCell: View {
    let post: Int
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.green)
                .containerRelativeFrame([.horizontal,.vertical])
                .overlay{
                    Text("\(post). İçerik")
                        .foregroundStyle(.white)
                }
            
            VStack {
                Spacer()
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("yselim.guner")
                            .fontWeight(.semibold )
                        Text("Yazılımcı ve Psikolog")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    Spacer()
                    
                    VStack(spacing:28) {
                        
                        Circle()
                            .frame(width: 48 ,height: 48 )
                            .foregroundStyle(.gray)
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                
                                Text("25")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                            
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                
                                Text("25")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                            
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                        }
                    }
                    
                    

                }
                .padding(.bottom,80)
            }
            .padding()
        }
        
    }
}

#Preview {
    FeedCell(post: 2)
}
