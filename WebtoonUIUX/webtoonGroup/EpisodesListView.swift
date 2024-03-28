//
//  EpisodesList.swift
//  WebtoonUIUX
//
//  Created by 이윤지 on 3/27/24.
//

import SwiftUI

struct EpisodesListView: View {
    var bagData : EpisodesModel
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
                  //  .frame(width: 100, height: 100)
                
            }.frame(width: 110, height: 90)
            Text(bagData.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)

            Text(bagData.price)
                .font(.caption)
                .fontWeight(.regular)
                .foregroundColor(.gray)
        }
    }
}
