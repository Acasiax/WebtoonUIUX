//
//  PodList.swift
//  musicMusic
//
//  Created by 이윤지 on 2023/06/21.
//

import SwiftUI

struct PodList: View {
    var podcasts : Album
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Image(podcasts.albumImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                Text(podcasts.albumShowTitle)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .padding(.top,2)
                Text("show \(podcasts.date)")
                    .foregroundColor(.white)
                    .font(.system(size: 13))
                    .padding(.top,1)
            }
            .frame(width: 150)
        }
    }
}

struct PodList_Previews: PreviewProvider {
    static var previews: some View {
        PodList(podcasts: albums[1])
    }
}
