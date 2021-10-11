//
//  ContentView.swift
//  Cats
//
//  Created by Yin Jie Soon on 11/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Tab number 1")
                .tabItem {
                    Label("Facts", systemImage: "lightbulb")
                }
            Text("Tab number 2")
                .tabItem {
                    Label("Photos", systemImage: "photo")
                }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
