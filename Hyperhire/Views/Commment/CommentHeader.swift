//
//  CommentHeader.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

extension CommentView{
    func commentHeader() -> some View {
        HStack(alignment: .top) {
            HStack(spacing: 8) {
                Image(comment.user.avatar)
                    .resizable()
                    .frame(width: 42,height: 42)
                HStack(spacing:4) {
                    Text(comment.user.name)
                        .font(.notoSans(.medium, 14))
                    if (comment.user.isVerified) {
                        ZStack (alignment: .center){
                            Circle()
                                .foregroundColor(Color.accentColor)
                            Image("check")
                                .resizable()
                                .padding(3)
                        }.frame(width: 14,height: 14)
                    }
                    Text(timeElapsedString(since:comment.date))
                        .font(.notoSans(.medium, 10))
                        .foregroundColor(.caption)
                }
            }
            Spacer()
            Button {
                
            } label: {
                Image("ellipsis")
                
            }
        }
    }
}

