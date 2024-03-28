//
//  EpisodesModel.swift
//  WebtoonUIUX
//
//  Created by 이윤지 on 3/27/24.
//

import SwiftUI

struct EpisodesModel: Identifiable {
    var id = UUID().uuidString
    var image : String
    var title : String
    var price : String
    var color : Color
}

var Episodes1 = [

    EpisodesModel(image: "웹툰세로표지1", title: "1화", price: "$10만 원", color: .pink),
    EpisodesModel(image: "웹툰세로표지2", title: "2화", price: "$10만 원", color: .pink),
    EpisodesModel(image: "웹툰세로표지3", title: "3화", price: "$10만 원", color: .pink),
    EpisodesModel(image: "웹툰세로표지4", title: "4화", price: "$10만 원", color: .pink),
    EpisodesModel(image: "웹툰세로표지5", title: "5화", price: "$10만 원", color: .pink),
    EpisodesModel(image: "웹툰세로표지6", title: "6화", price: "$10만 원", color: .pink),
    EpisodesModel(image: "웹툰세로표지7", title: "7화", price: "$10만 원", color: .pink),
    EpisodesModel(image: "웹툰세로표지8", title: "8화", price: "$10만 원", color: .pink),
    EpisodesModel(image: "웹툰세로표지9", title: "9화", price: "$10만 원", color: .pink),
    
    
]

var Episodes2 = [

    EpisodesModel(image: "정사각형샘플1", title: "1화", price: "24.05.01", color: .blue),
    EpisodesModel(image: "정사각형샘플2", title: "2화", price: "24.05.02", color: .pink),
    EpisodesModel(image: "정사각형샘플3", title: "3화", price: "24.05.03", color: .pink),
    EpisodesModel(image: "정사각형샘플4", title: "4화", price: "24.05.04", color: .pink),
    EpisodesModel(image: "정사각형샘플5", title: "5화", price: "24.05.05", color: .pink),
    EpisodesModel(image: "정사각형샘플6", title: "6화", price: "24.05.06", color: .pink),
    EpisodesModel(image: "jewelry1", title: "7화", price: "24.05.07", color: .blue),
    EpisodesModel(image: "jewelry2", title: "8화", price: "24.05.08", color: .pink),
    EpisodesModel(image: "jewelry3", title: "9화", price: "24.05.09", color: .pink),
    EpisodesModel(image: "jewelry4", title: "10화", price: "24.05.10", color: .pink),
    EpisodesModel(image: "jewelry5", title: "11화", price: "24.05.11", color: .pink),
    EpisodesModel(image: "jewelry6", title: "12화", price: "24.05.12", color: .pink),
    EpisodesModel(image: "jewelry1", title: "13화", price: "24.05.13", color: .blue),
    EpisodesModel(image: "jewelry2", title: "14화", price: "24.05.14", color: .pink),
    EpisodesModel(image: "jewelry3", title: "15화", price: "24.05.15", color: .pink),
    EpisodesModel(image: "jewelry4", title: "16화", price: "24.05.16", color: .pink),
    EpisodesModel(image: "jewelry5", title: "17화", price: "24.05.17", color: .pink),
    EpisodesModel(image: "jewelry6", title: "18화", price: "24.05.18", color: .pink),
    
    
]

var scroll_Tabs2 = ["첫 화 보기","회차","정보", "이용권", "댓글"]

