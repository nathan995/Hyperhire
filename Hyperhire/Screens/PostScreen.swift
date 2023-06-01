//
//  PostScreen.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

struct PostScreen: View {
    
    @ObservedObject var postViewModel = PostViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    PostView(postViewModel:postViewModel)
                    
                    CommentsListView(comments: postViewModel.post.comments)
                        .padding(.horizontal,16)
                        .padding(.top,12)
                        .padding(.bottom,48)
                    
                    
                }
                
            }
            CommentTextField()
            
        }
        
        
        
    }
}


struct CommentTextField :  View {
    
    @State private var comment : String = ""
    
    var body : some View {
        HStack(spacing:16) {
            
            Image("gallery")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24,height: 24)
            TextField("댓글을 남겨주세요.", text: $comment)
                .font(.notoSans(.regular, 12))
                .foregroundColor(.textPrimary)
            Text("등록")
                .font(.notoSans(.medium, 12))
            
        }
        .foregroundColor(.caption)
        .padding(.vertical,8)
        .padding(.horizontal,16)
        .background(Color.white)
        .overlay(Rectangle()
            .frame(width: nil, height: 2, alignment: .bottom)
            .foregroundColor(Color.hashtagBackground), alignment: .top)
    }
}

