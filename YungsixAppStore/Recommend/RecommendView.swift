//
//  RecommendView.swift
//  YungsixAppStore
//
//  Created by 최윤석 on 2022/06/23.
//

import SwiftUI

struct RecommendView: View {
    var item: Items
    var body: some View {
        NavigationLink(destination: EmptyView()) {
            VStack {
                Section {
                    ZStack(alignment: .leading) {
                        Image(item.imgName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 340, height: 250, alignment: .center)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        HStack(spacing: 5) {
                            Image(item.imgIcon)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40, alignment: .center)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding(.leading, 10)
                            VStack(alignment: .leading) {
                                Text(item.appName)
                                    .fontWeight(.bold)
                                Text(item.appExplain)
                            }
                            .frame(width: 170)
                            .lineLimit(1)
                            .foregroundColor(.white)
                            Spacer()
                            VStack {
                                Button {} label: {
                                    Text("받기")
                                        .bold()
                                        .foregroundColor(.white)
                                }
                                .padding(.horizontal, 20)
                                .padding(.vertical, 3)
                                .background(.bar)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                Text("앱 내 구입")
                                    .font(.caption2)
                                    .foregroundColor(.white)
                                    .padding(-5)
                            }
                            Spacer()
                        }
                        .offset(y: 80)
                    }
                } header: {
                    Divider()
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.appName)
                                .font(.caption)
                                .foregroundColor(.blue)
                            Text(item.appName)
                                .font(.title2)
                                .foregroundColor(.black)
                            Text(item.appExplain)
                                .font(.title3)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                    }
                    .frame(width: 340, alignment: .leading)
                    .lineLimit(1)
                }
            }
            .padding(.horizontal, 21)
        }
    }
}

struct RecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendView(item: Items(imgName: "단크2", imgIcon: "단팥2", appName: "쿠팡", appExplain: "지금 시키면 내일 도착"))
        //            .previewLayout(.fixed(width: 450, height: 350))
    }
}
