//
//  Home.swift
//  YouTubeDetailView
//
//  Created by 이윤지 on 2023/07/01.
//

import SwiftUI


struct VideoDetailView: View {
    @Environment(\.presentationMode) var presentationMode // 추가
    
    
    var selectedLookPage : ChanelLookPage = CHANEL2223DakarShow[0]
   
    @Binding var showDetailView: Bool
    @Binding var detailMovie: ChanelLookPage?
    @Binding var currentCardSize: CGSize
    
    var colums = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    @State var selectedVideo : Video = Videos[0]
    @State var showVideo = false
    @Namespace var namespaceVideo
    
    @State var loadView = false
    
    var body: some View {
        NavigationView { // NavigationView로 감싸기
            ZStack{
                //그리드 뷰
                ScrollView(.vertical, showsIndicators: false){
                    HStack{
                        
                        Text("Travel")
                            .font(.system(size: 35, weight: .bold))
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Button(action: {}){
                            
                            Image(systemName: "line.3.horizontal.decrease")
                                .renderingMode(.original)
                                .foregroundColor(.green)
                            
                        }
                    }
                    //위에 영역을 무시했기 때문에
                    
                    .padding([.horizontal,.top])
                    
                    //그리드 뷰
                    
                    LazyVGrid(columns: colums, spacing: 25){
                        
                        ForEach(CHANEL2223DakarShow) {LookPage in
                            VStack(alignment: .leading, spacing: 10){
                                Image(LookPage.artworkDetailImage)
                                    .resizable()
                                    .frame(height: 180)
                                    .cornerRadius(15)
                                
                                //assigning ID
                                    .onTapGesture {
                                        withAnimation(.spring()){
                                            showVideo.toggle()
                                            detailMovie = LookPage
                                            //   selectedLookPage = LookPage
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                                loadView.toggle()
                                            }
                                        }
                                    }
                                //  .matchedGeometryEffect(id: LookPage.id, in: namespaceVideo)
                                
                                
                                Text(LookPage.looktitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                            }
                            
                        }
                    }
                    .padding(.horizontal)
                }.padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                
                //히어로
                if showVideo {
                    
                    VStack{
                        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
                           
                            
                            Image(selectedLookPage.artworkDetailImage)
                                .resizable()
                                .frame(height: 300)
                                .matchedGeometryEffect(id: selectedLookPage.id, in: namespaceVideo)
                            if loadView{
                                
                                HStack{
                                    
                                    Button {
                                        loadView.toggle()
                                        
                                        withAnimation(.spring()){
                                            showVideo.toggle()
                                        }
                                    } label: {
                                        Image(systemName: "xmark")
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(Color.black.opacity(0.5))
                                            .clipShape(Circle())
                                    }
                                    
                                    Spacer()
                                    
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "suit.heart.fill")
                                            .foregroundColor(.red)
                                            .padding()
                                            .background(Color.green)
                                            .clipShape(Circle())
                                    }
                                }
                                .padding(.top,35)
                                .padding(.horizontal)
                            }
                        }
                        
                        //상세 페이지
                        ScrollView(.vertical, showsIndicators: false){
                            //애니메이션 로딩 후 로딩
                            if loadView {
                                VStack{
                                    HStack{
                                        Text(selectedLookPage.looktitle)
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                        
                                        Spacer()
                                    }
                                    .padding(.top)
                                    .padding(.horizontal)
                                    
                                    Text("zzzzzzzzzzzzzzz")
                                        .multilineTextAlignment(.leading)
                                        .padding(.top)
                                        .padding(.horizontal)
                                    
                                    HStack{
                                        
                                        Text("리뷰들")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                        
                                        Spacer()
                                    }
                                    .padding(.top)
                                    .padding(.horizontal)
                                    
                                    HStack(spacing: 0){
                                        
                                        ForEach(1...5, id: \.self){i in
                                            Image("bag\(i)")
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 50, height: 50)
                                                .clipShape(Circle())
                                                .offset(x: -CGFloat(i * 20))
                                            
                                            
                                        }
                                        Spacer(minLength: 0)
                                        Button(action: {
                                            
                                        }) {
                                            
                                            Text("View all")
                                                .fontWeight(.bold)
                                        }
                                        
                                    }
                                    //
                                    .padding(.leading,20)
                                    .padding(.top)
                                    .padding(.horizontal)
                                    
                                    //carousel
                                    HStack{
                                        
                                        Text("다른 사진")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                        
                                        Spacer()
                                    }
                                    .padding(.top)
                                    .padding(.horizontal)
                                    
                                    TabView{
                                        
                                        ForEach(1...6, id: \.self){i in
                                            if "bag\(i)" != selectedLookPage.artworkDetailImage{
                                                
                                                Image("bag\(i)")
                                                    .resizable()
                                                    .cornerRadius(15)
                                                    .padding(.horizontal)
                                                
                                            }
                                            
                                        }
                                    }
                                    .frame(height: 250)
                                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                                    .padding(.top)
                                    
                                    Button(action: {}) {
                                        
                                        Text("자세히 보기(사이트 방문)")
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.vertical)
                                        
                                            .frame(width: UIScreen.main.bounds.width - 150)
                                            .background(Color.blue)
                                            .cornerRadius(15)
                                    }
                                    .padding(.top,25)
                                }
                            }
                        }
                    }
                    .background(Color.white)
                }
            }
            .background(Color.clear.edgesIgnoringSafeArea(.all))
            //히어로 뷰를 숨기기 위해
            .statusBar(hidden: showVideo ? true : false)
            
            .navigationBarTitle("SLAY", displayMode: .inline)
            // 타이틀 추가
            .navigationBarColor(backgroundColor: .clear, titleColor: .purple)
            
            //.foregroundColor(.white)
            .navigationBarBackButtonHidden(true) // 기본 뒤로 가기 버튼 숨기기
            .navigationBarItems(leading: backButton)
            
        } //🕰️
    }
    private var backButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss() // 뒤로 가기 버튼 눌렀을 때 동작
        }) {
            Image(systemName: "chevron.left") // 뒤로 가기 아이콘
                .foregroundColor(.white)
        }
        
    }
    
}



//struct Homegg_Previews: PreviewProvider {
//    static var previews: some View {
//
//       // VideoDetailHome()
//        VideoDetailView(movie: movie, showDetailView: $, detailMovie: <#Binding<LookPage?>#>, currentCardSize: <#Binding<CGSize>#>)
//    }
//}

struct Video : Identifiable {
    
    var id : Int
    var image : String
    var title : String
}

var Videos = [

    Video(id: 0, image: "bag1", title: "title1"),
    Video(id: 1, image: "bag2", title: "title2"),
    Video(id: 2, image: "bag3", title: "title3"),
    Video(id: 3, image: "bag4", title: "title4"),
    Video(id: 4, image: "bag5", title: "title5"),
    Video(id: 5, image: "bag6", title: "title6"),
    Video(id: 6, image: "bag1", title: "title4"),
    Video(id: 7, image: "bag3", title: "title5"),
    Video(id: 8, image: "bag3", title: "title6"),
    Video(id: 9, image: "bag2", title: "title6")

]
