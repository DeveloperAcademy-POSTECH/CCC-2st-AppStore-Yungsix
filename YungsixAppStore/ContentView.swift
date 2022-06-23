//
//  ContentView.swift
//  YungsixAppStore
//
//  Created by 최윤석 on 2022/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                Text("The First Tab")
                    .badge(10)
                    .tabItem {
                        Image(systemName: "doc.text.image")
                        Text("투데이")
                    }
                Text("The First Tab")
                    .badge(10)
                    .tabItem {
                        Image(systemName: "gamecontroller.fill")
                        Text("게임")
                    }
                AppView()
                    .badge(10)
                    .tabItem {
                        Image(systemName: "square.stack.3d.up.fill")
                        Text("앱")
                    }
                Text("Another Tab")
                    .tabItem {
                        Image(systemName: "speedometer")
                        Text("Arcade")
                    }
                Text("The Last Tab")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("검색")
                    }
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
