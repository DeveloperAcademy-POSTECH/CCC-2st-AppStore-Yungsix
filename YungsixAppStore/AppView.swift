//
//  AppView.swift
//  YungsixAppStore
//
//  Created by 최윤석 on 2022/06/22.
//

import SwiftUI

struct AppView: View {
    @State var user = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center) {
                    Divider()
                    ForEach(0..<100) {
                        Text("Row \($0)")
                    }
                }
                .padding()
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
