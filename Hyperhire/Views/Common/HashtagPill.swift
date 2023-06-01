//
//  HashtagPill.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

struct HashtagPill: View {
    let tag : String
    var body: some View {
        Button {
            
        } label : {
            Text(tag)
                .font(.roboto(.medium, 12))
                .lineLimit(1)
            
        }
        .padding(.horizontal,12)
        .padding(.vertical,5)
        .foregroundColor(.hashtag)
        .background(Color.hashtagBackground)
        .clipShape(Capsule())
        .overlay(
            Capsule()
                .stroke(Color.hashtagBorder, lineWidth: 0.5)
        )
        
    }
}

struct HashtagPill_Previews: PreviewProvider {
    static var previews: some View {
        HashtagPill(tag:"#2023")
    }
}
