//
//  AppData.swift
//  YungsixAppStore
//
//  Created by 최윤석 on 2022/06/25.
//

import Foundation
import SwiftUI

class Application: ObservableObject {
    @Published var app = ["티머니", "쿠팡", "야놀자", "카카오톡", "카카오맵",
                          "네이버", "정부24", "테이블링", "크림", "카카오T",
                          "여기어때", "싸이월드", "당근마켓", "라인", "배달의민족"]
}

struct Items {
    var imgName: Image?
    var imgIcon: Image?
    var appName: String?
    var appExplain: String?
}
