//
//  CustomCorner.swift
//  HeroBag
//
//  Created by 이윤지 on 2023/06/26.
//

import SwiftUI

//브랜드행성 배경화면의 테두리
struct CustomCorner3: Shape {
   
    var corner : UIRectCorner
    var size : CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: size, height: size))
        return Path(path.cgPath)
    }
    
    
}
