//
//  Home.swift
//  YouTubeDetailView
//
//  Created by 이윤지 on 2023/07/03.
//
//
//import SwiftUI
////🔴🔴이거 사용안함!!!! 전부 유튜브뷰로 옮겼음!!!!!
//struct LookpageHome: View {
//    //애미메이션 뷰 프러퍼티들
//    @State var currentIndex: Int = 0
//    @State var currentTab: String = "Films"
//
//    //SnapCarousel 디테일뷰 프로퍼티들
//    @State var detailLookpage: LookPage?
//    @State var showLookDetailView: Bool = false
//    @State var currentCardSize: CGSize = .zero
//
//
//    @Binding var selectedBrand: Brand!
//    @Binding var selectedYoutube: FashionShow!
//
//    @Namespace var animation
//    @Environment(\.colorScheme) var scheme
//    var body: some View {
//        ZStack{
//            //BG
//            //BGView()
//
//            //main view content
//            VStack{
//                //custom nav bar
//               // NavBar()
//
//                // NavBar()
//                // 💎원래 원본값은 SnapCarousel(spacing: 20, trailingSpace: 110, index: $currentIndex, items: lookpages) { movie in
//                SnapCarousel(spacing: 20, trailingSpace: 180, index: $currentIndex, items: lookpages) { movie in
//
//                    GeometryReader{proxy in
//                        let size = proxy.size
//
//                        Image(movie.artworkImage)
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: size.width, height: size.height)
//                            .cornerRadius(15)
//                            .matchedGeometryEffect(id: movie.id, in: animation)
//                            .onTapGesture {
//                                currentCardSize = size
//                                detailLookpage = movie
//                                withAnimation(.easeInOut){
//
//                                    showLookDetailView = true
//                                }
//                            }
//
//                    }
//
//                }
//                //현재 사진은 살짝 더 위로 올라가게 할것임
//                //탭바랑 사진 사이의 높이 간격
//                .padding(.top,70)
//
//                //custom indicator
//                CustomIndicator()
////                HStack{
////                    Text("룩 모아보기")
////                        .font(.title3.bold())
////
////                    Spacer()
////
////                    Button("see More"){}
////                        .font(.system(size: 16, weight: .semibold))
////
////                }
////                .padding()
////
////                ScrollView(.horizontal, showsIndicators: false){
////                    HStack(spacing: 15){
////                        ForEach(lookpages){ movie in
////                            Image(movie.artworkImage)
////                                .resizable()
////                                .aspectRatio(contentMode: .fill)
////                                .frame(width: 100, height: 120)
////                                .cornerRadius(15)
////                        }
////
////                    }
////                    .padding()
////                }
//            }
//            .overlay{
//                if let movie = detailLookpage, showLookDetailView{
//                    LookPageDetailView(movie: movie, showDetailView: $showLookDetailView, detailMovie: $detailLookpage, currentCardSize: $currentCardSize, animation: animation)
//                }
//            }
//        }.preferredColorScheme(.dark)
//    }
//
//    //custom indicator 점 표시
//    @ViewBuilder
//    func CustomIndicator()->some View{
//        HStack(spacing: 5){
//            ForEach(lookpages.indices,id: \.self){index in
//                Circle()
//                    .fill(currentIndex == index ? .blue : .gray.opacity(0.5))
//                    .frame(width: currentIndex == index ? 10 : 6, height: currentIndex == index ? 10 : 6)
//            }
//
//        }
//        .animation(.easeInOut, value: currentIndex)
//
//    }
//
//
//    //custom nav var
//    @ViewBuilder
//    func NavBar()->some View{
//        HStack(spacing: 0){
//            ForEach(["Films","Localities"],id: \.self){tab in
//                Button {
//                    withAnimation{
//                        currentTab = tab
//                    }
//                } label: {
//
//                    Text(tab)
//                        .foregroundColor(.white)
//                        .padding(.vertical,6)
//                        .padding(.horizontal,20)
//                        .background{
//                            if currentTab == tab{
//                                Capsule()
//                                    .fill(.regularMaterial)
//                                    .environment(\.colorScheme, .dark)
//                                    .matchedGeometryEffect(id: "TAB", in: animation)
//                            }
//                        }
//                }
//            }
//        }
//        .padding()
//
//    }
//
//
//
//    //MARK: Blurred BG
//    @ViewBuilder
//    func BGView()->some View{
//        GeometryReader{proxy in
//            let size = proxy.size
//
//            TabView(selection: $currentIndex) {
//                ForEach(lookpages.indices,id: \.self){index in
//                    Image(lookpages[index].artworkImage)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: size.width, height: size.height)
//                        .clipped()
//                        .tag(index)
//                }
//            }
//            .tabViewStyle(.page(indexDisplayMode: .never))
//            .animation(.easeInOut, value: currentIndex)
//
//            let color: Color = (scheme == .dark ? .black : .white)
//
//            //custom gradient
//            LinearGradient(colors: [
//                .black,
//                .clear,
//                color.opacity(0.15),
//                color.opacity(0.5),
//                color.opacity(0.8),
//                color,
//                color
//            ], startPoint: .top, endPoint: .bottom)
//
//            //블러드 오버레이
//            Rectangle()
//                .fill(.ultraThinMaterial)
//
//        }
//        .ignoresSafeArea()
//
//    }
//
//
//
//
//
//}
//
//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        LookpageHome(selectedBrand: .constant(nil), selectedYoutube: .constant(nil))
//         //   .preferredColorScheme(.dark)
//
//    }
//}
