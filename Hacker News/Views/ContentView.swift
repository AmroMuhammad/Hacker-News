//
//  ContentView.swift
//  Hacker News
//
//  Created by Amr Muhammad on 4/19/21.
//  Copyright © 2021 Amr Muhammad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { (post) in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: 1, title: "hello"),
//    Post(id: 2, title: "there"),
//    Post(id: 3, title: "now")
//]
