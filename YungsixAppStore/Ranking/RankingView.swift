//
//  RnakingView.swift
//  YungsixAppStore
//
//  Created by 최윤석 on 2022/06/26.
//

import SwiftUI

struct RankingView: View {
    var items: Items
    var rank: Int
    var body: some View {
        NavigationLink(destination: EmptyView()) {
            HStack {
                Image(items.imgIcon)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                VStack {
                    HStack {
                        VStack {
                            Text("\(rank)")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .padding(.vertical, 5)
                            Spacer()
                        }.frame(width: 20, height: 75)
                        VStack(alignment: .leading) {
                            Text(items.appName)
                                .foregroundColor(.black)
                            Text(items.appExplain)
                                .font(.footnote)
                                .foregroundColor(.secondary)
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                            Spacer()
                        }
                        .padding(5)
                        .frame(width: 160, height: 75, alignment: .leading)
                        Button {} label: {
                            Text("받기")
                                .bold()
                        }
                        .frame(width: 75, height: 30, alignment: .center)
                        .background(.bar)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        Spacer()
                    }.padding(.bottom, -10)
                    Divider()
                }
            }
            //            .frame(width: 350, height: 100, alignment: .center)
            .padding(.horizontal, 19)
        }
    }
}

struct RnakingView_Previews: PreviewProvider {
    static var previews: some View {
        RankingView(items: Items(imgName: "단크2", imgIcon: "단팥2",
                                 appName: "티머니", appExplain: "고속/시외버스 예매부터 택시까지"), rank: 1)
    }
}
