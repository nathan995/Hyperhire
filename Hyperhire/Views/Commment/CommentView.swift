//
//  CommentView.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

struct CommentView: View {
    var comment : Comment
    var body: some View {
        VStack(spacing: 4) {
            commentHeader()
            commentContent()
            if(comment.repliesCount > 0) {
                CommentsListView(comments: comment.replies)
                    .padding(.leading,34)
                    .padding(.top,12)
            }
            
        }
    }
}

