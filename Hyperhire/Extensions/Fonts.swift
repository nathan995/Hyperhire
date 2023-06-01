//
//  Fonts.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import Foundation
import SwiftUI

extension Font {
    static func roboto(_ weight : robotoWeights, _ size : CGFloat) ->  Font {
        .custom(weight.rawValue, size: size)
    }
    
    static func notoSans(_ weight : notoSansWeights, _ size : CGFloat) ->  Font {
        .custom(weight.rawValue, size: size)
    }
}



enum robotoWeights : String {
    case medium = "Roboto-Medium"
    case regular = "Roboto-Regular"
}

enum notoSansWeights : String {
    case bold = "NotoSansKR-Bold"
    case medium = "NotoSansKR-Medium"
    case regular = "NotoSansKR-Regular"
}
