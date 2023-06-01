//
//  User.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import Foundation

struct User : Identifiable{
    let id = UUID()
    let name : String
    let avatar: String
    let height : Int
    let weight : Int
    let isVerified : Bool
    
}

