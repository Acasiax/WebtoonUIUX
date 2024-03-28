//
//  DetailWebtoon.swift
//  WebtoonUIUX
//
//  Created by 이윤지 on 3/25/24.
//

import SwiftUI

struct DetailWebtoon: View {
    
    
    @Binding var bagData : BagModel!
    @Binding var show : Bool
    var animation: Namespace.ID
    @State var selectedColor = Color.red
    
    
    
    
    var safeArea: EdgeInsets
    var size: CGSize
   
   
    @State private var showYouTube = false
    @State private var navigateBack = false
    @Binding var instaShow : Bool
 //   @Binding var selectedBrand: Brand!
  //  @State var selectedYoutube: FashionShow!
    
    
    
    
    @State var selectedTab = scroll_Tabs[0]
//    @Namespace var animation
//    @State var show = false
//    @State var selectedBag : BagModel!
    @State var selectedBag : EpisodesModel!
    
    var filteredItems: [EpisodesModel] {
           switch selectedTab {
           case "쥬얼리":
               return Episodes1
           default:
               return Episodes2
           }
       }
    
    
    var body: some View {
       
            ScrollView(.vertical,showsIndicators: false){
                
                VStack{
                    ArtWork()
                    
                    GeometryReader{proxy in
                        //탑 엣지 무시하기
                        let minY = proxy.frame(in: .named("SCROLL")).minY - safeArea.top
                        Button {
                            
                        } label: {
                            Text("정주행 시작하기")
                                .font(.callout)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(.horizontal,45)
                                .padding(.vertical,12)
                                .background{
                                    Capsule()
                                        .fill(Color.green.gradient)
                                }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .offset(y: minY < 50 ? -(minY - 50) : 0)
                    }
                    .frame(height: 50)
                    .padding(.top, -34)
                    .zIndex(1)
                    
                    VStack{
                        Text("Popular")
                            .foregroundColor(.white)
                            .fontWeight(.heavy)
                        ProfileView()
                        
                    }
                    .padding(.top,10)
                    .zIndex(0)
                    
                    
                    
                }
                .overlay(alignment: .top){
                    
                    HeaderView()
                    
                }
            }
            //루이비통 남자애 얼굴 보이게 하려고 패딩padding(.top,55) 넣어봄
            //.padding(.top,55)
            .coordinateSpace(name: "SCROLL")
            .fullScreenCover(isPresented: $navigateBack, content: {
                      // navigateBack 상태가 true일 때 이전 화면을 보여주는 View를 반환합니다.
                ArtistList()
                    .transition(.move(edge: .trailing))
                    
                     // ArtistCircle()
                  }).background(Color.black) // 배경색을 파란색으로 설정
           // .padding(.top,55)
        }
    
    
    @ViewBuilder
  
        func ArtWork()->some View{
           
            let height = size.height * 0.45
            GeometryReader{proxy in
                let size = proxy.size
                let minY = proxy.frame(in: .named("SCROLL")).minY
                let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
                
                Image("\(bagData.image)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width, height: size.height + (minY > 0 ? minY : 0))
                    .clipped()
                    .overlay(content: {
                        ZStack(alignment: .bottom){
                            //그라데이션
                            Rectangle()
                                .fill(
                                    .linearGradient(colors: [
                                        .black.opacity(0 - progress),
                                        .black.opacity(0.1 - progress),
                                        .black.opacity(0.3 - progress),
                                        .black.opacity(0.5 - progress),
                                        .black.opacity(0.8 - progress),
                                        .black.opacity(1),
                                    ], startPoint: .top, endPoint: .bottom)
                                )
                            
                            VStack(spacing: 0){
                                Text( "\(bagData.title)")
                                    .font(.system(size: 45))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                
                                Text("\(bagData.price)".uppercased())
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                                    .padding(.top,15)
                            }
                            .opacity(1 + (progress > 0 ? -progress : progress))
                            .padding(.bottom,55)
                            
                            //스크롤뷰 움직이는 것
                            .offset(y: minY < 0 ? minY : 0)
                        }
                    })
                    .offset(y: -minY)
            }
            .frame(height: height + safeArea.top)
        }
    
    
    //패션쇼 플레이리스트
    @ViewBuilder
    func ProfileView()-> some View{
        
        ScrollView(.vertical, showsIndicators: false, content:
                    {
            
            VStack{
                
//                HStack{
//                    
//                    Text("요일 웹툰")
//                        .font(.title)
//                        .fontWeight(.heavy)
//                        .foregroundColor(.white)
//                    
//                    Spacer()
//                }
//                .padding(.horizontal)
//                .padding(.top)
//                .padding(.bottom,10)
                
                
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    
                    HStack(spacing: 15){
                        ForEach(scroll_Tabs2, id: \.self){tab in
                            //탭 버튼
                            //   TabButton(title: tab, selectedTab: $selectedTab)
                            TabButton2(title: tab, selectedTab: $selectedTab, animation: animation)
                            
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top,10)
                })
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 15), count: 3),spacing: 15){
                    //ForEach(bags){bag in
                    ForEach(filteredItems){bag in
                        EpisodesListView(bagData: bag, animation: animation)
                            .onTapGesture {
                                withAnimation(.easeIn){
                                    
                                    selectedBag = bag
                                    show.toggle()
                                    
                                }
                            }
                        
                    }
                    
                }
                .padding()
                .padding(.top,10)
                .padding(.bottom,100)
            }
        })
        
        
        
        
//        VStack(spacing: 25){
//            ForEach(bagData.indices, id: \.self) { index in
//           // ForEach(fashionShowListChannel.indices, id: \.self) { index in
//                HStack(spacing: 25){
//                    Text("\(index + 1)")
//                        .font(.callout)
//                        .fontWeight(.semibold)
//                        .foregroundColor(.gray)
//                    
//                    VStack(alignment: .leading, spacing: 6){
//                        Text(bagData[index].showTitle)
//                       // Text(fashionShowListChannel[index].showTitle)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.white)
//                        
//                        Text(selectedBrand.fashionShows[index].showLocation)
//                            .font(.caption)
//                            .foregroundColor(.gray)
//                        
//                        //동영상 조화수 -  1234회 조회수 돌파
//                        Text(selectedBrand.fashionShows[index].loadingCount)
//                        //Text(fashionShowListChannel[index].loadingCount)
//                            .font(.caption)
//                            .foregroundColor(.gray)
//                        
//                    }
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    
//                    Button(action: {
//                    //    DispatchQueue.global().async {
//                            showYouTube = true
//                        //selectedBrand = brands.last
//                        //🟠
//                        selectedYoutube = selectedBrand.fashionShows[index]
//                        
//                  //  }
//                        }) {
//                            Image(systemName: "play.circle.fill")
//                                .foregroundColor(.gray)
//                        }
//                    
//                }
//                
//            }
//        }
//        
//        .padding(15)
//        .padding(.bottom,75)
//
//        .fullScreenCover(isPresented: $showYouTube) {
//
//            YouTube(selectedBrand: $selectedBrand, selectedYoutube: $selectedYoutube)
//                        }  //.background(Color.blue) // 배경색을 파란색으로 설정
        
    }
    
    
    //헤더 뷰
@ViewBuilder
    func HeaderView()-> some View{
        GeometryReader{proxy in
            let minY = proxy.frame(in: .named("SCROLL")).minY
            let height = size.height * 0.45
            let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
            let titleProgress = minY / height
            
            HStack(spacing: 15){
                Button{
                 
                    withAnimation(.easeOut){show.toggle()}
               //   withAnimation(.easeOut){instaShow.toggle()}
                    
                    
                   // navigateBack = true
                } label: {
                    //뒤로가기 화살표
                    Image(systemName: "chevron.left")
                        .font(.title3)
                        .foregroundColor(.white)
                }
                
                Spacer(minLength: 0)
                
                Button{
                    
                } label: {
                    Text("첫화 보기")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.horizontal,10)
                        .padding(.vertical,6)
                        .border(.white, width: 1.5)
                }
                .opacity(1 + progress)
                
                Button{
                    
                } label: {
                    Image(systemName: "ellipsis")
                        .font(.title3)
                        .foregroundColor(.white)
                }
            }
            //메인에서 써클눌렀을때 팔로우 헤더 부분이 알맞게 밑으로 내려가게 패딩 넣었음.
            .padding(.top,70)
            .overlay(content: {
                Text("\(bagData.title)")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                //서브 타이틀 어디에 둘건지 정하기
                    .offset(y: -titleProgress > 0.75 ? 0 : 45)
                    .clipped()
                    .animation(.easeInOut(duration: 0.25), value: -titleProgress > 0.75)
            })
            .padding(.top, safeArea.top + 10)
            .padding([.horizontal,.bottom],15)
            .background(content: {
                Color.black
                    .opacity(-progress > 1 ? 1 : 0)
            })
            .offset(y: -minY)
        }
        .frame(height: 35)
    }
    
}

struct DetailWebtoon_Previews: PreviewProvider {
    
    
    static var previews: some View {
       // ProfileView()
       // Person1(safeArea: EdgeInsets, size: CGSize(), instaShow: false, selectedBrand: Data)
        let screenBounds = UIScreen.main.bounds
        PlanetHome( data: brands)
        
     // Person1(safeArea: EdgeInsets(), size: CGSize(width: screenBounds.width, height: screenBounds.height), instaShow: .constant(false), selectedBrand: $selectedBrand)
    
 

    }
}
