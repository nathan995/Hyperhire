//
//  PostView.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

struct PostView: View {
    @ObservedObject var postViewModel : PostViewModel
    var post: Post {
        postViewModel.post
    }
    @State var currentIndex = 0
  
    var body: some View {
        VStack (alignment: .leading) {
            
            VStack(alignment:.leading,spacing: 16) {
                postHeader()
                postContent()
            }.padding()
            
            VStack(alignment: .leading) {
                postImage()
                postActions()
            }
        }
    }
}


