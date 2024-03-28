//
//  HomeView.swift
//  musicMusic
//
//  Created by 이윤지 on 2023/06/21.
//


import SwiftUI

struct HomeViewW: View {
    
    var mainAlbums : Album
    var mainPodcasts : Album
    var isledessts : Album
    @State var show = false
    @Binding var selectedBrand: Brand!
    @Binding var selectedYoutube: FashionShow!
    @State var seledctedAlbum : Album!
    

    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            ScrollView{
                ZStack{
                    LinearGradient(gradient: Gradient(stops: [.init(color: .gray, location: 0.0),.init(color: .black, location: 0.25),.init(color: .black, location: 0.6)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea(.all)
                    VStack(alignment: .center){
                        Spacer(minLength: 10)
                        HStack{
                          
                            Text("Have a wonderful day")
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                                .fontWeight(.bold)
                            Spacer()
                            Image(systemName: "clock.arrow.circlepath")
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 23, height: 23)
                            Image(systemName: "gearshape")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.white)
                                .frame(width: 23, height: 23)
                                .padding(.leading, 10)
                        }
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        .padding(.leading,10)
                        

                        HStack {
                            
                               Spacer(minLength: 20)
                            
                               VStack {
                                   HStack {
                                     
                                       Button(action: {
//                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum = albums6COLOR[0]
                                       }) {
                                           //이름
                                           NewItems(album: albums6COLOR[0])
                                       }
                                       Button(action: {
                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum =  albums6COLOR[1]
                                       }) {
                                           NewItems(album: albums6COLOR[1])
                                       }
                                      
                                   }
                                       .frame(width: 190, height: 60, alignment: .center) // 이 부분을 추가하여 크기를 고정합니다.
                     
                                   HStack {
                                       Button(action: {
                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum = albums6COLOR[2]
                                       }) {
                                           NewItems(album: albums6COLOR[2])
                                       }
                                       Button(action: {
                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum =  albums6COLOR[3]
                                       }) {
                                           NewItems(album: albums6COLOR[3])
                                       }
                                   }.frame(width: 190, height: 60, alignment: .center) // 이 부분을 추가하여 크기를 고정합니다.
                                   
                                   
                                   HStack {
                                       Button(action: {
                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum =  albums6COLOR[4]

                                       }) {
                                           NewItems(album: albums6COLOR[4])
                                       }
                                       Button(action: {
                                           // 버튼 클릭 시 실행할 액션을 여기에 추가
                                           show.toggle()
                                           seledctedAlbum =  albums6COLOR[5]

                                       }) {
                                          NewItems(album: albums6COLOR[5])
                                       }
                                   }
                                   .frame(width: 190, height: 60, alignment: .center) // 이 부분을 추가하여 크기를 고정합니다.

                               }
//                               .frame(width: 190, height: 60, alignment: .center) // 이 부분을 추가하여 크기를 고정합니다.

                               Spacer(minLength: 20)
                                
                           }
                        
                        .fullScreenCover(isPresented: $show) {
                            YouTube222(selectedBrand: $selectedBrand, selectedYoutube: $selectedYoutube, seledctedAlbum: $seledctedAlbum)
                            
                                    }

                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        HStack{
                            Image(mainAlbums.artistImage)
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                            VStack(alignment: .leading){
                                Text("MORE LIKE")
                                    .font(.system(size:10))
                                    .tracking(1)
                                    .foregroundColor(.white)
                                    .font(.caption)
                                Text(mainAlbums.artistName)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                        }
                        .padding()
                        .padding(.bottom,-10)
                        
                        //정사각형 리스트 구찌
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: [GridItem(.flexible(minimum: 200))], spacing: 5) {
                                ForEach(albums, id: \.id) { album in
                                        Button(action: {
                                            withAnimation(.easeIn) {
                                                
                                                seledctedAlbum =  album
//                                                selectedYoutube =  album.youtubeURL
                                                //album.youtubeID
    
                                                show.toggle()
                                                
                                                // Handle the button tap here
                                                print("Tapped on \(album.albumShowTitle)")
                                            }
                                        }) {
                                            AlbumList(albums: album)
                                        }
                                    }
                                }
                          //  }
                            .padding(.leading)
                            .padding(.trailing)
                        }
                    
                        
                        .fullScreenCover(isPresented: $show) {
                         //   YouTube222(selectedBrand: $selectedBrand, selectedYoutube: $selectedYoutube, seledctedAlbum: $seledctedAlbum)
                            
                                    }
                        
                        //Newest show 문단 시작
                        HStack{
                            Text("Newest show")
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding()
                        //샤넬 순서대로
                 
                        //직사각형 리스트
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .top) {
                                Button(action: {
                                    // 버튼 클릭 시 실행할 액션을 여기에 추가 //
                                    show.toggle()
                                    seledctedAlbum =  albumsChanel[0]
                                    
                                }) {
                                    PodList(podcasts: albumsChanel[0])
                                }
                                
                                Button(action: {
                                    show.toggle()
                                    seledctedAlbum =  albumsChanel[1]
                                    
                                    // 버튼 클릭 시 실행할 액션을 여기에 추가9999
                                }) {
                                    PodList(podcasts: albumsChanel[1])
                                }
                                
                                Button(action: {
                                    // 버튼 클릭 시 실행할 액션을 여기에 추가99999
                                    show.toggle()
                                    seledctedAlbum =  albumsChanel[2]
                                }) {
                                    PodList(podcasts: albumsChanel[2])
                                }
                                
                                Button(action: {
                                    // 버튼 클릭 시 실행할 액션을 여기에 추가9999
                                    show.toggle()
                                    seledctedAlbum =  albumsChanel[3]
                                }) {
                                    PodList(podcasts: albumsChanel[3])
                                }
                                
                                Button(action: {
                                    // 버튼 클릭 시 실행할 액션을 여기에 추가
                                    show.toggle()
                                    seledctedAlbum =  albumsChanel[4]
                                }) {
                                    PodList(podcasts: albumsChanel[4])
                                }
                                
                            
                            }
                            .padding(.leading)
                            .padding(.trailing)
                        }

                      
                    }
                    .padding(.bottom,200)
                }
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewW(mainAlbums: albums[0], mainPodcasts: albums[0], isledessts: albums[0], selectedBrand: .constant(nil), selectedYoutube: .constant(nil))
    }
}
