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
                    RecommendList(items: items.app)
                    RankingList(items: items.app)
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
