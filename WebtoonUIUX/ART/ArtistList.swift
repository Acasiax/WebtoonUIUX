//
//  ArtistList.swift
//  univershow
//
//  Created by 이윤지 on 2023/05/28.
//

import SwiftUI

struct ArtistList: View {
    var body: some View {
        
        NavigationView{
         //  ArtistCircle(data: brands)
          //  ArtistCircle()
              //  .navigationBarTitle("오로라",displayMode: .inline)
//                .background(Color.clear)
//                .background(Color.black)
        }
      
    }
}

struct ArtistList_Previews: PreviewProvider {
    static var previews: some View {
        ArtistList()
    }
}


//struct ArtistCircle : View {
//  //  @State var current : Brand
//    @State var data: [Brand]
//    
//    @State var instaShow = false
//    @State var selectedBrand: Brand? = nil  // 선택된 브랜드를 저장할 상태 변수
//    
//    
//    var body: some View{
//        
//        ZStack{
//            
//            Color.black.opacity(0.05).edgesIgnoringSafeArea(.all)
//            
//            ZStack{
//                
//                VStack{
//                    
//                    ScrollView(.horizontal, showsIndicators: false){
//                        
//                        HStack(spacing: 22){
//                            
//                            ForEach(0..<self.data.count) {i in
//                                VStack(spacing: 8){
//                                    ZStack{
//                                        
//                                        Image(self.data[i].proPic)
//                                            .renderingMode(.original)
//                                            .resizable()
//                                            .frame(width: 65, height: 65)
//                                            .clipShape(Circle())
//                                        
//                                        if !self.data[i].seen{
//                                            Circle()
//                                                .trim(from: 0, to: 1)
//                                            //점선 360 돌아갈때
//                                                .stroke(AngularGradient(gradient: .init(colors: [.pink,.purple,.pink]), center: .center), style: StrokeStyle(lineWidth: 3, dash:
//                                                                                                                                                                [self.data[i].loading ? 0.4 : 0]))
//                                                .frame(width: 74, height: 74)
//                                                .rotationEffect(.init(degrees: self.data[i].loading ? 360 : 0))
//                                            
//                                        }
//                                        
//                                    }
//                                    Text(self.data[i].name)
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 12)) // 폰트 크기 12로 설정
//                                        .lineLimit(2)
//                                        .multilineTextAlignment(.center) // 가운데 정렬
//                                        
//                                }
//                                .frame(width: 75)
//                                //💎
//                                .onTapGesture {
//                                    withAnimation(Animation.default.speed(0.35).repeatForever(autoreverses: false)){
//                                        
//                                        self.data[i].loading.toggle()
//                                        DispatchQueue.main.asyncAfter(deadline: .now() + (self.data[i].seen ? 0 : 1.2)) {
//                                         
//                                            selectedBrand = self.data[i]
//                                           // self.data = self.data[i]
//                                            self.instaShow.toggle()
//                                            
//                                            self.data[i].loading = false
//                                            self.data[i].seen = true
//                                        }
//                                    }
//                                }
//                                
//                                
//                            }
//                        }
//                        .padding(.horizontal)
//                        .padding(.top)
//                    }
//                    
//                    
//                    
//                    Spacer()
//                    
//                }
//                
//                if self.instaShow,  let brand = selectedBrand {
//                    ZStack(alignment: .topTrailing) {
//                        
//                        Color.black.edgesIgnoringSafeArea(.all)
//                        ZStack(alignment: .topTrailing){
//                            GeometryReader { _ in
//                                       VStack {
//                                           brand.getView()  // 해당 브랜드의 뷰를 표시
//                                       }
//                                   }
//
//                        }
//                        
//                        
//                    }
//                    .transition(.move(edge: .trailing))
//                    .onTapGesture {
//                        self.instaShow.toggle()
//                        
//                    }
//                }
//            }
//        }
//        .navigationBarTitle(self.instaShow ? "" : "오로라",displayMode: .inline)
//        .navigationBarHidden(self.instaShow ? true : false)
//
//        .background(Color.clear)
//        .background(Color.black)
//    }
//}
//
