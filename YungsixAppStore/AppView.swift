//
//  AppView.swift
//  YungsixAppStore
//
//  Created by 최윤석 on 2022/06/22.
//

import SwiftUI

struct AppView: View {
    @State var page = 0
    @State var user = false
    @StateObject var items = Application()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(items.app) { item in
                                RecommendView(item: item)
                            }
                        }
                    }
                    .onAppear {
                        UIScrollView.appearance().isPagingEnabled = true
                    }
                }
            }
            .navigationBarTitle("앱")
            .sheet(isPresented: self.$user) {
                EmptyView()
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
