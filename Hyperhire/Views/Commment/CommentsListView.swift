//
//  CommentsListView.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

struct CommentsListView: View {
    var comments : [Comment]
    var body: some View {
        LazyVStack(spacing:16) {
            ForEach(comments) { comment in
                CommentView(comment: comment)
            }
        }
        
    }
}
