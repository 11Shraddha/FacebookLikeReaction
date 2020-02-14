//
//  Reaction.swift
//  FacebookLikeReaction
//
//  Created by Shraddha Sojitra on 14/02/20.
//

import Foundation


public class Reaction {
    public var title:String!
    public var imageName:String!
    public var tag: Int?
    
    public init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}

