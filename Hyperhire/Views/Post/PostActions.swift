//
//  PostActionsView.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

extension PostView {
    func postActions() -> some View {
        HStack (spacing:14) {
            HStack(spacing:6) {
                Button {
                    postViewModel.process(intent: .like)
                } label: {
                    
                    Image(post.isLiked ? "heart-filled" : "heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                        .frame(width: 20,height: 20)
                    
                }
                Text("\(post.likesCount)")
                    .font(.roboto(.regular, 12))
                    .foregroundColor(.caption)
            }
            
            HStack(spacing:6) {
                
                Image("text-bubble")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20,height: 20)
                
                Text("\(post.commentsCount)")
                    .font(.roboto(.regular, 12))
                    .foregroundColor(.caption)
            }
            Button {
                postViewModel.process(intent: .bookmark)
            } label: {
                
                Image(post.isBookmarked ? "bookmark-filled" : "bookmark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20,height: 20)
            }
            Image("ellipsis")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20,height: 20)
            
            
            Spacer()
            
        }
        .padding(.vertical,12)
        .padding(.horizontal,16)
        .overlay(Rectangle()
            .frame(width: nil, height: 2, alignment: .bottom)
            .foregroundColor(Color.hashtagBackground), alignment: .bottom)
    }
}

