//
//  Comment.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import Foundation

struct Comment : Identifiable{
    let id = UUID()
    let user : User
    let text : String
    let date : Date
    var replies : [Comment]
    var likesCount : Int = 0
    var repliesCount : Int = 0
    
    
}
