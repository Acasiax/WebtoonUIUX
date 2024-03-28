//
//  BagView.swift
//  HeroBag
//
//  Created by 이윤지 on 2023/06/22.
//

import SwiftUI

struct BagView: View {
    
    var bagData : BagModel
    var animation : Namespace.ID
    
    var body: some View {
       
        VStack(alignment: .leading, spacing: 6) {
            
            ZStack{
                //상품 배경색
                Color(.red)
              //  Color(bagData.image)
                    .cornerRadius(15)
                
                
                Image(bagData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                  //  .padding(20)
                    .cornerRadius(15)
                    .matchedGeometryEffect(id: bagData.image, in: animation)
                
            }
//            Text(bagData.title)
//                .fontWeight(.heavy)
//                .foregroundColor(.white)
//            
//            Text(bagData.price)
//                .fontWeight(.heavy)
//                .foregroundColor(.gray)
        }
    }
}
