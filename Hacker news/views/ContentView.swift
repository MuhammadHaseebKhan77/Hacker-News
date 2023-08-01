//
//  ContentView.swift
//  Hacker news
//
//  Created by Apple on 06/06/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager=NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            
            .navigationBarTitle("Hacker news")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let post = [
//  post(id:"1", title: "Hello"),
//   post(id:"2", title: "Bonjour"),
// post(id:"3", title: "Hola")
//]
