//
//  PlanetTapButton.swift
//  HeroBag
//
//  Created by 이윤지 on 2023/06/26.
//


import SwiftUI

struct PlanetTapButton: View {
    var title : String
    @Binding var selectedTab : String
    var animation : Namespace.ID
   // var color: AngularGradient
    
    var body: some View {
        
        Button(action: {
            
            withAnimation(.spring()){selectedTab = title}
            
        }, label: {
            
            VStack(alignment: .leading, spacing: 6, content: {
             //   var color = AngularGradient(gradient: .init(colors: [.blue, .green, .blue]), center: .center, startAngle: .zero, endAngle: .degrees(180))
                  
                Text(title)
                    .fontWeight(.heavy)
                    .foregroundColor(selectedTab == title ? .blue : .gray)
           
                //애니메이션 더하기
                if selectedTab == title {
                    
                    Capsule()
                        .fill(Color.blue)
                        .frame(width: 40, height: 4)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                }
                
            })
            .frame(width: 100)
        })
    }
}

