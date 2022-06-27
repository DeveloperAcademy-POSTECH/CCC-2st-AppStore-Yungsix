//
//  AppData.swift
//  YungsixAppStore
//
//  Created by 최윤석 on 2022/06/25.
//

import Foundation
import SwiftUI

class Application: ObservableObject {
    @Published var app = [
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "티머니", appExplain: "고속/시외버스 예매부터 택시까지"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "쿠팡", appExplain: "스마트한 쇼핑을 위한 완벽한 장소"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "야놀자", appExplain: "여행의 모든 것 한 번에 쉽게"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "카카오톡", appExplain: "모든 연결의 시작, 카카오톡"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "카카오맵", appExplain: "좋은 곳을 이끌어 줄 지도"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "네이버", appExplain: "검색과 콘텐츠-쇼핑, 내도구"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "정부24", appExplain: "라이프 스타일"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "테이블링", appExplain: "웨이팅 맛집 줄서기 어플, 앱으로 맛집 미리 줄서기"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "크림", appExplain: "한정판을 거래하는 가장 확실한 방법"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "카카오T", appExplain: "모든 이동을 위한 모빌리티 서비스"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "여기어때", appExplain: "취향대로 머물다 여기어때"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "싸이월드", appExplain: "사이좋은 사람들 싸이월드"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "큐비", appExplain: "우리학교 기출문제"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "당근마켓", appExplain: "당신 근처의 동네 커뮤니티"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "라인", appExplain: "소셜 네트워킹"),
            Items(imgName: "단크2", imgIcon: "단팥2",
                  appName: "배달의민족", appExplain: "대한민국 1등 배달앱")
//            Items(imgName: "단크2", imgIcon: "단팥2",
//                  appName: "", appExplain: ""),
//            Items(imgName: "단크2", imgIcon: "단팥2",
//                  appName: "", appExplain: ""),
//            Items(imgName: "단크2", imgIcon: "단팥2",
//                  appName: "", appExplain: ""),
//            Items(imgName: "단크2", imgIcon: "단팥2",
//                  appName: "", appExplain: ""),
//            Items(imgName: "단크2", imgIcon: "단팥2",
//                  appName: "", appExplain: ""),
//            Items(imgName: "단크2", imgIcon: "단팥2",
//                  appName: "", appExplain: ""),
//            Items(imgName: "단크2", imgIcon: "단팥2",
//                  appName: "", appExplain: "")
        ]
}

struct Items: Identifiable {
    var id = UUID()
    var imgName: String
    var imgIcon: String
    var appName: String
    var appExplain: String
}
