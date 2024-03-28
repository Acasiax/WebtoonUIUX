//
//  Tab.swift
//  designTabBar
//
//  Created by 이윤지 on 2023/06/27.
//

import SwiftUI

struct TabItem: Identifiable {
    
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
    
}

var tabItems = [
    TabItem(text: "space", icon: "house", tab: .home, color: .teal),
    TabItem(text: "explore", icon: "magnifyingglass", tab: .explore, color: .blue),
    TabItem(text: "Library", icon: "rectangle.stack", tab: .notifications, color: .red),//Library
    TabItem(text: "notification", icon: "bell", tab: .library, color: .pink),
]

enum Tab: String {
    case home
    case explore
    case notifications
    case library
    
}
