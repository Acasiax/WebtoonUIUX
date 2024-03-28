//
//  ModelData.swift
//  HeroBag
//
//  Created by 이윤지 on 2023/06/22.
//

import SwiftUI

struct BagModel: Identifiable {
    var id = UUID().uuidString
    var image : String
    var title : String
    var price : String
    var color : Color
}

var bags = [

BagModel(image: "웹툰세로표지1", title: "잊혀진 영역의 연대기", price: "$10만 원", color: .pink),
BagModel(image: "웹툰세로표지2", title: "마지막 연금술사", price: "$10만 원", color: .pink),
BagModel(image: "웹툰세로표지3", title: "별을 향한 메아리", price: "$10만 원", color: .pink),
BagModel(image: "웹툰세로표지4", title: "에테리얼의 수호자들", price: "$10만 원", color: .pink),
BagModel(image: "웹툰세로표지5", title: "룬에 얽힌 마음들", price: "$10만 원", color: .pink),
BagModel(image: "웹툰세로표지6", title: "황혼의 속삭임", price: "$10만 원", color: .pink),
BagModel(image: "웹툰세로표지7", title: "에테리얼의 수호자들", price: "$10만 원", color: .pink),
BagModel(image: "웹툰세로표지8", title: "룬에 얽힌 마음들", price: "$10만 원", color: .pink),
BagModel(image: "웹툰세로표지9", title: "황혼의 속삭임", price: "$10만 원", color: .pink),
    
    
]

var jewelrys = [

BagModel(image: "jewelry1", title: "호랑이 반지", price: "$10만 원", color: .blue),
BagModel(image: "jewelry2", title: "뱀 반지", price: "$10만 원", color: .pink),
BagModel(image: "jewelry3", title: "실버 반지", price: "$10만 원", color: .pink),
BagModel(image: "jewelry4", title: "신라왕 반지", price: "$10만 원", color: .pink),
BagModel(image: "jewelry5", title: "백제왕 반지", price: "$10만 원", color: .pink),
BagModel(image: "jewelry6", title: "고구려 귀걸이", price: "$10만 원", color: .pink),
    
    
]

var scroll_Tabs = ["월","화","수", "목", "금", "토", "일"]
