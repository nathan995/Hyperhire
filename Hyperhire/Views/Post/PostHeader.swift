//
//  PostHeader.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

extension PostView {
    func postHeader() -> some View {
        HStack {
            HStack(spacing: 8) {
                Image(post.user.avatar)
                    .resizable()
                    .frame(width: 40,height: 40)
                VStack (alignment:.leading,spacing: 2) {
                    HStack(spacing:4) {
                        Text(post.user.name)
                            .font(.notoSans(.medium, 14))
                        if(post.user.isVerified) {
                            ZStack (alignment: .center){
                                Circle()
                                    .foregroundColor(Color.accentColor)
                                Image("check")
                                    .resizable()
                                    .padding(3)
                            }.frame(width: 14,height: 14)
                        }
                        Text(timeElapsedString(since:post.date))
                            .font(.notoSans(.medium, 10))
                            .foregroundColor(.caption)
                        
                    }
                    Text("\(post.user.height)cm · \(post.user.weight)kg")
                        .font(.roboto(.regular, 12))
                        .foregroundColor(.caption)
                }
            }
            Spacer()
            Button {
                
            } label: {
                Text("팔로우")
                    .font(.notoSans(.medium, 12))
                    .foregroundColor(.white)
            }
            .padding(.horizontal,12)
            .padding(.vertical,4)
            .background(Color.accentColor)
            .clipShape(Capsule())
        }
        
    }
    
}
