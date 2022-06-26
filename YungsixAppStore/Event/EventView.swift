//
//  EventView.swift
//  YungsixAppStore
//
//  Created by 최윤석 on 2022/06/26.
//

import SwiftUI

struct EventView: View {
    var item: Items
    var body: some View {
        VStack {
            ZStack {
                Image(item.imgName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 340, height: 250, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                HStack {
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("특별 이벤트")
                            .font(.caption)
                        Text(item.appName)
                            .font(.title2)
                        Text(item.appExplain)
                            .foregroundColor(.white)
                    }.padding()
                    Spacer()
                }
            }.foregroundColor(.white)
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                HStack(spacing: 5) {
                    Image(item.imgIcon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.leading, 10)
                    VStack(alignment: .leading) {
                        Text(item.appName)
                        Text(item.appExplain)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .frame(width: 170)
                    .lineLimit(1)
                    .foregroundColor(.black)
                    Spacer()
                    VStack {
                        Button {} label: {
                            Text("받기")
                                .bold()
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 3)
                        .background(.quaternary)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        Text("앱 내 구입")
                            .font(.caption2)
                            .foregroundColor(.secondary)
                            .padding(.top, -5)
                            .padding(.bottom, 5)
                    }
                    Spacer()
                }
            }
            .padding(.top, -9)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 15, x: 10, y: 10)
        .frame(width: 340, height: 310, alignment: .center)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(item: Items(imgName: "단크2", imgIcon: "단팥2",
                              appName: "티머니", appExplain: "고속/시외버스 예매부터 택시까지"))
    }
}
