//
//  PostImage.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

extension PostView {
    func postImage() -> some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $currentIndex) {
                // I used index here because I'm using the same images three times and I won't get a unique ID if I use the string as ID
                ForEach(post.images.indices, id: \.self) { idx in
                    AsyncImage(url: URL(string: post.images[idx])!) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fill)
                        
                            .frame(height:450)
                            .clipped()
                        
                        
                    } placeholder: {
                        
                        ProgressView()
                            .frame(maxWidth:  .infinity,maxHeight: .infinity, alignment: .center)
                        
                    }
                }
            }
            .frame(height:450)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            HStack(spacing:5){
                ForEach(post.images.indices,id:\.self) { index in
                    Circle()
                        .frame(width: 6,height: 6)
                        .foregroundColor(.white)
                        .opacity(index == currentIndex ? 1 : 0.5)
                }
            }.padding(.bottom,16)
            
        }
    }
}

