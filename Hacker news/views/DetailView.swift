//
//  DetailView.swift
//  Hacker news
//
//  Created by Apple on 07/06/2023.
//

import SwiftUI


struct DetailView: View {
    let url:String?
    
    var body: some View {
     webView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"http://www.google.com")
    }
}

