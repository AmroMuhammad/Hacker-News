//
//  ContentView.swift
//  Hacker News
//
//  Created by Amr Muhammad on 4/19/21.
//  Copyright © 2021 Amr Muhammad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts) { (post) in
                Text(post.title)
            }
            .navigationBarTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post : Identifiable{
    let id:Int
    let title:String
}

let posts = [
    Post(id: 1, title: "hello"),
    Post(id: 2, title: "there"),
    Post(id: 3, title: "now")
]
