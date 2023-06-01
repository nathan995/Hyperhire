//
//  PostContent.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

extension PostView {
    func postContent() -> some View {
        VStack(alignment:.leading,spacing: 16){
            Text(post.title)
                .font(.notoSans(.bold, 14))
            Text(post.detail)
                .font(.notoSans(.medium, 12))
                .foregroundColor(.textSecondary)
            
            WrappedHStack(horizontalSpacing: 8,verticalSpacing: 8){
                ForEach(post.hashtags, id: \.self){ tag in
                    HashtagPill(tag: tag)
                }
            }
        }
    }
}
