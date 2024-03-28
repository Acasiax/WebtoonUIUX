//
//  PlanetHome.swift
//  HeroBag
//
//  Created by 이윤지 on 2023/06/26.
//

import SwiftUI


struct PlanetHome: View {
    @State var selectedTab = "브랜드" // "브랜드"로 초기화
   // @State var selectedTab = scroll_Tabs[0]
    @Namespace var animation
    @State var show = false
    @State var selectedPlanet : PlanetModel!
    @State var txt = ""
    
    
    //인스타그램 변수
    @State var data: [Brand]
    @State var instaShow = false
   //@State var selectedBrand: Brand? = nil  // 선택된 브랜드를 저장할 상태 변수
    @State var selectedBrand: Brand!
    
    var filteredItemsFirstHome: [PlanetModel] {
           switch selectedTab {
           case "디렉터":
               return Directors
           default:
               return planets
           }
       }
    
    var body: some View {
 
        ZStack{

         //   VStack(spacing: 15){

                ScrollView(.vertical, showsIndicators: false, content:
                            {
                    

                    VStack(spacing: 15){
                       
                        HStack(spacing: 12) {
                            Image(systemName: "atom").renderingMode(.original).resizable().frame(width: 30, height: 30) .foregroundColor(.purple.opacity(0.7))
                            
                            Text("SLAY")
                                .font(.headline)
                                .foregroundColor(.white)
                                .overlay(
                                    LinearGradient(
                                        gradient: Gradient(colors: [.pink, .purple, .pink]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                    .mask(Text("SLAY").font(.headline))
                                )
                            
                            Spacer()
                            Button(action: {
                                // Add your button action here
                            }) {
                                
                                Image(systemName: "gearshape").renderingMode(.original)
                            }
                            
                        }
                        //오로라 로고 패딩
                        .padding(.top,40)

                        //.padding()
//                        HStack(spacing: 15){
//                            
//                            HStack {
//                                Image(systemName: "magnifyingglass").font(.body)
//                                TextField("search designer", text: $txt)
//                            }
//                            .padding(10)
//                            .background(Color.gray)
//                            .cornerRadius(20)
//                            
//                            Button(action: {
//                                // Add your button action here
//                            }) {
//                                
//                                Image(systemName: "house").renderingMode(.original)
//                            }
//                            
//                        }
                        //검색창패딩
                       // .padding()
                        ScrollView(.vertical, showsIndicators: false){
                            NoticeView()
                        }
                        //아이디어 제안 패딩
                       // .padding()
                           // Spacer()
                       
                        
                        //아티스트 카데고리
                      //  ArtistCircle(data: brands)
                        ZStack{
                            
                            Color.black.opacity(0.05).edgesIgnoringSafeArea(.all)
                            
                            ZStack{
                                
                                VStack{
                                    
                                    ScrollView(.horizontal, showsIndicators: false){
                                        
                                        HStack(spacing: 22){
                                            
                                            ForEach(0..<self.data.count) {i in
                                                VStack(spacing: 8){
                                                    ZStack{
                                                        
                                                        Image(self.data[i].proPic)
                                                            .renderingMode(.original)
                                                            .resizable()
                                                            .frame(width: 65, height: 65)
                                                            .clipShape(Circle())
                                                        
                                                        if !self.data[i].seen{
                                                            Circle()
                                                                .trim(from: 0, to: 1)
                                                            //점선 360 돌아갈때
                                                                .stroke(AngularGradient(gradient: .init(colors: [.pink,.purple,.yellow.opacity(0.3),.orange,.pink,.purple,.pink]), center: .center), style: StrokeStyle(lineWidth: 3.4, dash:
                                                                                                                                                                                [self.data[i].loading ? 0.6 : 0]))
                                                                .frame(width: 74, height: 74)
                                                                .rotationEffect(.init(degrees: self.data[i].loading ? 360 : 0))
                                                            
                                                        }
                                                        
                                                    }
                                
                                                    Text(self.data[i].name)
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 12)) // 폰트 크기 12로 설정
                                                        .lineLimit(2)
                                                        .multilineTextAlignment(.center) // 가운데 정렬
                                                        
                                                }
                                                .frame(width: 75)
                                                //💎
                                                .onTapGesture {
                                                    withAnimation(Animation.default.speed(0.35).repeatForever(autoreverses: false)){
                                                        
                                                        self.data[i].loading.toggle()
                                                        DispatchQueue.main.asyncAfter(deadline: .now() + (self.data[i].seen ? 0 : 1.2)) {
                                              //🟡
                                                            selectedBrand = self.data[i]
                                                           // self.data = self.data[i]
                                                            self.instaShow.toggle()
                                                            
                                                            self.data[i].loading = false
                                                            self.data[i].seen = true

                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        .padding(.horizontal)
                                        .padding(.top)
                                    }
                                    Spacer()
                                    
                                }
                            }
                        }

                        .background(Color.clear)
                        //인스타뷰 전체 가로 배경
                       // .background(Color.gray.opacity(0.19))
                        .cornerRadius(15)
                        
                        HStack{
                            Text("Planet History")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(.red)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        //60으로 변경했더니 women이 밑으로 잘 내려왔음
                       // .padding(.top,60)
                        .padding(.bottom,10)
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            
                            HStack(spacing: 15){
                                ForEach(planetscroll_Tabs, id: \.self){tab in
                                    //탭 버튼
                                  
                                    PlanetTapButton(title: tab, selectedTab: $selectedTab, animation: animation)
                                }
                            }
                            .padding(.horizontal)
                           // .padding(.top,10)
                        })
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 30), count: 2),spacing: -5){
                            ForEach(filteredItemsFirstHome){planet in
                                
                                PlanetView(planetData: planet, animation: animation)
                                    .onTapGesture {
                                        withAnimation(.easeIn){
                                            
                                            selectedPlanet = planet
                                            show.toggle()
                                            
                                        }
                                    }
                            }
                            
                        }
                        //행성 팯
                        .padding()
                      //  .padding(.top,10)
                        .padding(.bottom,50)
                        
                    }
                    //????????
                    .padding()
                })
                
      //      }
            
            .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
            
            if selectedPlanet != nil && show{
                PlanetDetailView(planetData: $selectedPlanet, show: $show, animation: animation)
            }
            
            //복사본 (실험용)
            if selectedBrand != nil && instaShow{
                //Person1()
                let screenBounds = UIScreen.main.bounds
                Person1(safeArea: EdgeInsets(), size: CGSize(width: screenBounds.width, height: screenBounds.height), instaShow: $instaShow, selectedBrand: $selectedBrand)
                   // .padding(.top,50)
            }

        }
        
       .ignoresSafeArea(.all, edges: .top)
        //전체 배경색
       .background(Color.black.opacity(0.92))
    }
}



struct PlanetHome_Previews: PreviewProvider {
    static var previews: some View {
        PlanetHome( data: brands)
    }
}
