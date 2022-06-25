//
//  RecommendView.swift
//  YungsixAppStore
//
//  Created by 최윤석 on 2022/06/23.
//

import SwiftUI

struct RecommendView: View {
    
    var body: some View {
        ScrollView(.horizontal) {
            Section {
                ZStack {
                    Image("단크2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 200, alignment: .center)
                        .clipped()
                }
            } header: {
                HStack {
                    VStack {
                        Text("다시 발견하기")
                        Text("앱 이름")
                        Text("앱 설명")
                    }
                    Spacer()
                }
            }
        }
        .padding()
    }
}

struct RecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendView()
    }
}
