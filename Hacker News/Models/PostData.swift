//
//  PostData.swift
//  Hacker News
//
//  Created by Amr Muhammad on 4/19/21.
//  Copyright © 2021 Amr Muhammad. All rights reserved.
//

import Foundation
struct Results : Decodable {
    let hits:[Post]
}

struct Post : Decodable,Identifiable {
    var id:String {
        return objectID
    }
    let objectID:String
    let points:Int
    let title:String
    let url:String?
}
