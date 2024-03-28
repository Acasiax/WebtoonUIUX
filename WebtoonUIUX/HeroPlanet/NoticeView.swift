//
//  NoticeView.swift
//  Slay
//
//  Created by 이윤지 on 2/17/24.
//



import SwiftUI

struct NoticeView: View {
    var body: some View {
        AutoScroller(imageNames: ["웹툰가로표지1", "웹툰가로표지2", "title"])
    }
}

//struct AutoScroller: View {
//    var imageNames: [String]
//    let timer = Timer.publish(every: 2.5, on: .main, in: .common).autoconnect()
//
//    @State private var selectedImageIndex: Int = 0
//
//    var body: some View {
//        ZStack {
//            Color.secondary
//                .ignoresSafeArea()
//
//            TabView(selection: $selectedImageIndex) {
//                ForEach(0..<imageNames.count, id: \.self) { index in
//                    ZStack(alignment: .topLeading) {
//                        Image("\(imageNames[index])")
//                            .resizable()
//                            .tag(index)
//                            .aspectRatio(contentMode: .fit)  // 이미지 크기에 따라 적절한 크기로 조정
//                          //  .frame(width: 350, height: 130)
//                    }
//                  //  .background(VisualEffectBlur())
//                    .shadow(radius: 20)
//                }
//            }
//
//            .frame(height: 150)
//            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//            .ignoresSafeArea()
//
//            HStack {
//                ForEach(0..<imageNames.count, id: \.self) { index in
//                    Capsule()
//                        .fill(Color.white.opacity(selectedImageIndex == index ? 1 : 0.33))
//                        .frame(width: 15, height: 8)
//                        .onTapGesture {
//                            selectedImageIndex = index
//                        }
//                }
//                .offset(y: 90)
//            }
//        }
//        .onReceive(timer) { _ in
//            withAnimation(.default) {
//                selectedImageIndex = (selectedImageIndex + 1) % imageNames.count
//            }
//        }
//    }
//}



struct AutoScroller: View {
    var imageNames: [String]
    let timer = Timer.publish(every: 2.5, on: .main, in: .common).autoconnect()
    
    @State private var selectedImageIndex: Int = 0

    var body: some View {
        ZStack {
//            Color.secondary
//                .ignoresSafeArea()

            TabView(selection: $selectedImageIndex) {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    ZStack(alignment: .topLeading) {
                        Image("\(imageNames[index])")
                            .resizable()
                            .tag(index)
                            .aspectRatio(contentMode: .fit)
                        
                        if selectedImageIndex == 0 {
                           
                            Text("아이디어 제안")
                                .foregroundColor(.white)
                                .font(.title)
                                .padding()
                        } else if selectedImageIndex == 1 {
                            Text("문의 사항")
                                .foregroundColor(.white)
                                .font(.title)
                                .padding()
                        }
                        else if selectedImageIndex == 2 {
                            Text("기타 등등")
                                .foregroundColor(.white)
                                .font(.title)
                                .padding()
                        }
                    }
                    .shadow(radius: 20)
                }
            }
            .frame(height: 150)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea()

            HStack {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    Capsule()
                        .fill(Color.white.opacity(selectedImageIndex == index ? 1 : 0.33))
                        .frame(width: 8, height: 5)
                        .onTapGesture {
                            selectedImageIndex = index
                        }
                }
                .offset(y: 80)
            }
        }
        .onReceive(timer) { _ in
            withAnimation(.default) {
                selectedImageIndex = (selectedImageIndex + 1) % imageNames.count
            }
        }
    }
}





struct NoticeViewView_Previews: PreviewProvider {
    static var previews: some View {
        NoticeView()
    }
}
