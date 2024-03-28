//
//  AlbumList.swift
//  musicMusic
//
//  Created by 이윤지 on 2023/06/21.
//
//hj
import SwiftUI

struct AlbumList: View {
    var albums : Album
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea ()
            VStack(alignment: .leading){
                Image(albums.albumImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                
                Text(albums.albumShowTitle)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .frame(width: 180)
                    .lineLimit(1) // Limit to a single line
                    .truncationMode(.tail) // Truncate at the end with "..."
                    .padding(.top,2)
                    
                
                Text("Album \(albums.artistName)")
                    .foregroundColor(.white)
                    .font(.system(size: 13))
                    .padding(.top,1)
                
              //  albums.youtubeURL
            }
        
        }
    }
}

struct AlbumList_Previews: PreviewProvider {
    static var previews: some View {
        AlbumList(albums: albums[1])
    }
}
