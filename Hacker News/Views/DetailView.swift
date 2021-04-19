//
//  DetailView.swift
//  Hacker News
//
//  Created by Amr Muhammad on 4/19/21.
//  Copyright © 2021 Amr Muhammad. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url:String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
