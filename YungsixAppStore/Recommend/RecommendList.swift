//
//  RecommendList.swift
//  YungsixAppStore
//
//  Created by 최윤석 on 2022/06/26.
//

import SwiftUI

struct RecommendList: View {
    var items: [Items]
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(items) { item in
                        RecommendView(item: item)
                    }
                }
            }
            .onAppear {
                UIScrollView.appearance().isPagingEnabled = true
            }
        }
    }
}

struct RecommendList_Previews: PreviewProvider {
    static var previews: some View {
        RecommendList(items: [
            Items(imgName: "단크2", imgIcon: "단팥2", appName: "티머니", appExplain: "고속/시외버스 예매부터 택시까지"),
            Items(imgName: "단크2", imgIcon: "단팥2", appName: "쿠팡", appExplain: "스마트한 쇼핑을 위한 완벽한 장소")
        ])
    }
}
