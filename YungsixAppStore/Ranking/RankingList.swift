//
//  RankingList.swift
//  YungsixAppStore
//
//  Created by 최윤석 on 2022/06/26.
//

import Foundation
import SwiftUI

struct RankingList: View {
    var items: [Items]
    var rank = 0
    var body: some View {
        VStack {
            Section {
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        ForEach((0..<3).reversed(), id: \.self) { row in
                            LazyHStack {
                                ForEach(0..<items.count / 3) { col in
                                    VStack {
                                        RankingView(items: items[searchCell(row: row, col: col)],
                                                    rank: searchCell(row: row, col: col) + 1)
                                    }
                                }
                            }
                        }
                    }
                    .onAppear {
                        UIScrollView.appearance().isPagingEnabled = true
                    }
                }
                .frame(width: 400, height: 220, alignment: .center)
            } header: {
                Divider()
                HStack {
                    Text("무료 앱 순위")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Button("모두 보기") {}
                }
            }
        }.padding()
    }
    func searchCell(row: Int, col: Int) -> Int {
        return (((col + 1) * 3) - row) - 1
    }
}

struct RankingList_Previews: PreviewProvider {
    static var previews: some View {
        RankingList(items: [
            Items(imgName: "단크2", imgIcon: "단팥2", appName: "티머니", appExplain: "고속/시외버스 예매부터 택시까지"),
            Items(imgName: "단크2", imgIcon: "단팥2", appName:
                    "쿠팡", appExplain: "스마트한 쇼핑을 위한 완벽한 장소"),
            Items(imgName: "단크2", imgIcon: "단팥2", appName: "야놀자", appExplain: "여행의 모든 것 한 번에 쉽게")])
    }
}
