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
        }.frame(width: 340, height: 250, alignment: .center)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(item: Items(imgName: "단크2", imgIcon: "단팥2",
                              appName: "티머니", appExplain: "고속/시외버스 예매부터 택시까지"))
    }
}
