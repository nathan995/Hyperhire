//
//  CommentContent.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

extension CommentView {
    func commentContent() -> some View {
        VStack(alignment:.leading,spacing: 4) {
            Text(comment.text)
                .font(.notoSans(.regular, 12))
                .foregroundColor(.textSecondary)
            HStack (spacing:14) {
                HStack(spacing:6) {
                    
                    Image("heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20,height: 20)
                    
                    Text("\(comment.likesCount)")
                        .font(.roboto(.regular, 12))
                        .foregroundColor(.caption)
                }
                
                if (comment.repliesCount > 0) {
                    HStack(spacing:6) {
                        
                        Image("text-bubble")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20,height: 20)
                        
                        Text("\(comment.repliesCount)")
                            .font(.roboto(.regular, 12))
                            .foregroundColor(.caption)
                    }
                }
            }
            
        }
        .padding(.leading,34)
        
    }
}

