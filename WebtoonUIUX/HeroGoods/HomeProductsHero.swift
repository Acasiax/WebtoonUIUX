//
//  HomeProductsHero.swift
//  Aurora
//
//  Created by 이윤지 on 2023/06/30.
//

import SwiftUI

import SwiftUI

struct HomeProductsHero: View {
    let screenBounds = UIScreen.main.bounds
    @State var selectedTab = scroll_Tabs[0]
    @Namespace var animation
    @State var show = false
    @State var selectedBag : BagModel!
    
    var filteredItems: [BagModel] {
           switch selectedTab {
           case "쥬얼리":
               return jewelrys
           default:
               return bags
           }
       }
    
    var body: some View {
 
        ZStack{
       
            VStack(spacing: 0){
                ZStack{
                    
                    HStack(spacing: 15){
      
                        Button(action: {}, label: {
                            Image(systemName: "line.horizontal.3.decrease")
                                .font(.title)
                                .foregroundColor(.orange)
                        })
                        Spacer(minLength: 0)
                        
                        Button(action: {}, label: {
                            Image(systemName: "magnifyingglass")
                                .font(.title)
                                .foregroundColor(.orange)
                        })
                        
                        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                            
                            Button(action: {}, label: {
                                Image(systemName: "cart")
                                    .font(.title)
                                    .foregroundColor(.orange)
                            })
                            
                            Circle()
                                .fill(Color.red)
                                .frame(width: 15, height: 15)
                                .offset(x: 5, y: -10)
                        })
      
                    }
                    
                    Text("Kakao WebToon")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    
                }
                
                .padding()
                .padding(.top,UIApplication.shared.windows.first?
                    .safeAreaInsets.top)
                
                .background(Color.red.opacity(0.2))
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content:
                            {
                    
                    VStack{
                        
                        HStack{
                            
                            Text("요일 웹툰")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        .padding(.bottom,10)
                        
                        
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            
                            HStack(spacing: 15){
                                ForEach(scroll_Tabs, id: \.self){tab in
                                    //탭 버튼
                                    //   TabButton(title: tab, selectedTab: $selectedTab)
                                    TabButton(title: tab, selectedTab: $selectedTab, animation: animation)
                                    
                                }
                            }
                            .padding(.horizontal)
                            .padding(.top,10)
                        })
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 15), count: 3),spacing: 15){
                            //ForEach(bags){bag in
                            ForEach(filteredItems){bag in
                                BagView(bagData: bag, animation: animation)
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
            }
            //배경이 흰색일때 위에 헤더 제외한 밑에 모든 배경을 살짝 회색으로 처리해주는 것임
            .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
            
            if selectedBag != nil && show{
              //  DetailView(bagData: $selectedBag, show: $show, animation: animation)
                
                DetailWebtoon(bagData: $selectedBag, show: $show, animation: animation, safeArea: EdgeInsets(), size: CGSize(width: screenBounds.width, height: screenBounds.height), instaShow: .constant(false))
                
            }

        }
        .background(Color.black.opacity(0.89))
        .ignoresSafeArea(.all, edges: .top)
        .ignoresSafeArea(.all, edges: .bottom)
        
    }
}




struct HomeProductsHero_Previews: PreviewProvider {
    static var previews: some View {
        HomeProductsHero()
    }
}
