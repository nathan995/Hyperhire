//
//  Post.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import Foundation

struct Post : Identifiable {
    let id = UUID()
    var user : User
    let title : String
    let detail : String
    let images : [String]
    let hashtags: [String]
    let date : Date
    var isLiked : Bool
    var isBookmarked : Bool
    var comments : [Comment]
    var likesCount : Int = 0
    var commentsCount : Int = 0
}

