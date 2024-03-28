//
//  PlanetView.swift
//  HeroBag
//
//  Created by 이윤지 on 2023/06/26.
//

import SwiftUI

struct PlanetView: View {
    
    var planetData : PlanetModel
    var animation : Namespace.ID
    
    var body: some View {
       
        VStack(alignment: .leading, spacing: 6) {
            
            ZStack{
                Color(.clear)
              //  Color(bagData.image)
                    .cornerRadius(115)
                
                
                Image(planetData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width / 3, height: 140)
                   // .padding(20)
                    .matchedGeometryEffect(id: planetData.image, in: animation)
                
            }
            
            HStack(spacing: 8){
                
                Spacer(minLength: 0)

                
                Text(planetData.title)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
        }
        //행성간의 위아래 간격
        .padding(.top)
        .padding(.leading)
        .padding([.bottom,.trailing],8)
        //행성안에 네모 도형 색깔
        
        .background(planetData.color

                    //커스텀 도형
            .clipShape(CustomCorner3(corner: [.topLeft,.topRight,.bottomLeft], size: 25)).padding(.top,20).padding(.top,55)
        
        )
   }
}
