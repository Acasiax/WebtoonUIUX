//
//  chanelookpage.new.swift
//  Aurora
//
//  Created by 이윤지 on 2023/08/19.
//


//import SwiftUI
////샘플 모델
//struct BrandShowList: Identifiable {
//    var id = UUID().uuidString
//  //  var id : Int
//  //  var looktitle: String
//   // var artworkImage: String
//   // var artworkDetail: String
//    var showName: [ChanelLookPage]
//   // var brand: [Brand]
//    //var youtubeURL: String
//   // var showClothes: [ChanelLookPage]
////    var artworkText : String
////    var artworkDetailImage1: String
////    var artworkDetailAAA: String
//   
//}
//
//var ChanelShowList: [BrandShowList] = [
//
//    BrandShowList( showName: CHANEL2324FWReadyToWearShow),
//    BrandShowList(showName: CHANEL2223DakarShow),
//    BrandShowList(showName: CHANEL2324FWReadyToWearShow),
//    BrandShowList( showName: CHANEL2223DakarShow),
//    BrandShowList( showName: CHANEL2324FWReadyToWearShow)
//    
//]
//
//var BUBURYShowList: [BrandShowList] = [
//
//    BrandShowList(showName: CHANEL2324FWReadyToWearShow),
//    BrandShowList( showName: CHANEL2223DakarShow),
//    BrandShowList(showName: CHANEL2324FWReadyToWearShow),
//    BrandShowList( showName: CHANEL2324FWReadyToWearShow)
//    
//
//]
//
//
//
//
//struct ChanelLookPage: Identifiable {
//    var id = UUID().uuidString
//    var looktitle: String
//    var artworkImage: String
//    var artworkDetail: [ArtworkDetail]
//    var artworkText: String
//    var artworkDetailImage: String
//    var artworkDetailAAA: String
//    var orderOfImages: [String] // Added variable to specify the order of ImageTITLE
//    var test: [String] {
//        return orderOfImages.map { imageName in
//            artworkDetail.first { $0.ImageTITLE == imageName }?.Image ?? ""
//        }
//    }
//}
//
//
//
//var CHANEL2324FWReadyToWearShow: [ChanelLookPage] = [
//    ChanelLookPage(looktitle: "0", artworkImage: "CHANEL 2023:24 가을-겨울 레디-투-웨어 쇼.1", artworkDetail: finalImage1, artworkText: finalImage1[0].artworkText, artworkDetailImage: finalImage1[0].Image, artworkDetailAAA: finalImage1[0].ImageTITLE, orderOfImages: ["Belt", "Blouse", "Bracelet"]),
//    
//    ChanelLookPage(looktitle: "1", artworkImage: "CHANEL 2023:24 가을-겨울 레디-투-웨어 쇼.2", artworkDetail: artworkDetailImageTitle2, artworkText: artworkDetailImageTitle2[0].artworkText, artworkDetailImage: artworkDetailImageTitle2[0].Image, artworkDetailAAA: artworkDetailImageTitle2[0].ImageTITLE, orderOfImages: []),
//    
//    // Rest of your ChanelLookPage instances...
//]
//
//
//
////한패 artworkDetailImageTitle1 이고 [0]만 변경해야됨
//var CHANEL2223DakarShow: [ChanelLookPage] = [
//
//    ChanelLookPage(looktitle: "1", artworkImage: "22:23공방-1", artworkDetail: finalImage1, artworkText: finalImage1[0].artworkText, artworkDetailImage: finalImage1[0].Image, artworkDetailAAA: artworkDetailImageTitle2[0].ImageTITLE, orderOfImages: ["Belt", "Blouse", "Bracelet"]),
//    //ArtworkDetail
//    
//    ChanelLookPage(looktitle: "2", artworkImage: "22:23공방-2", artworkDetail: artworkDetailImageTitle2, artworkText: artworkDetailImageTitle2[0].artworkText, artworkDetailImage: artworkDetailImageTitle2[0].Image, artworkDetailAAA: artworkDetailImageTitle2[0].ImageTITLE, orderOfImages: ["Belt", "Blouse", "Bracelet"]),
//
//    ChanelLookPage(looktitle: "3", artworkImage: "22:23공방-3", artworkDetail: artworkDetailImageTitle3, artworkText: artworkDetailImageTitle3[0].artworkText, artworkDetailImage: artworkDetailImageTitle3[0].Image, artworkDetailAAA: artworkDetailImageTitle2[0].ImageTITLE, orderOfImages: ["Belt", "Blouse", "Bracelet"]),
//
//    ChanelLookPage(looktitle: "4", artworkImage: "22:23공방-4", artworkDetail: finalImage1, artworkText: finalImage1[0].artworkText, artworkDetailImage: finalImage1[3].Image, artworkDetailAAA: artworkDetailImageTitle2[0].ImageTITLE, orderOfImages: []),
//
//    ChanelLookPage(looktitle: "5", artworkImage: "22:23공방-5", artworkDetail: finalImage1, artworkText: finalImage1[0].artworkText, artworkDetailImage: finalImage1[4].Image, artworkDetailAAA: artworkDetailImageTitle2[0].ImageTITLE, orderOfImages: []),
//
//    ChanelLookPage(looktitle: "6", artworkImage: "22:23공방-6", artworkDetail: finalImage1,artworkText: finalImage1[0].artworkText, artworkDetailImage: finalImage1[0].Image,artworkDetailAAA: artworkDetailImageTitle2[0].ImageTITLE, orderOfImages: []),
//
//    ChanelLookPage(looktitle: "7", artworkImage: "22:23공방-7", artworkDetail: finalImage1, artworkText: finalImage1[0].artworkText, artworkDetailImage: finalImage1[0].Image, artworkDetailAAA: artworkDetailImageTitle2[0].ImageTITLE, orderOfImages: []),
//
//    ChanelLookPage(looktitle: "88", artworkImage: "22:23공방-8", artworkDetail: finalImage1, artworkText: finalImage1[0].artworkText, artworkDetailImage: finalImage1[0].Image,artworkDetailAAA: artworkDetailImageTitle2[0].ImageTITLE, orderOfImages: []),
//
//    ChanelLookPage(looktitle: "9", artworkImage: "22:23공방-9", artworkDetail: finalImage1, artworkText: finalImage1[0].artworkText, artworkDetailImage: finalImage1[0].Image,artworkDetailAAA: artworkDetailImageTitle2[0].ImageTITLE, orderOfImages: []),
//
//    ChanelLookPage(looktitle: "10", artworkImage: "22:23공방-10", artworkDetail: finalImage1, artworkText: finalImage1[0].artworkText, artworkDetailImage: finalImage1[0].Image, artworkDetailAAA: artworkDetailImageTitle2[0].ImageTITLE, orderOfImages: [])
//]
//
//
//struct ArtworkDetail: Identifiable {
//   // var id = UUID().uuidString
//    var id : Int
//    var artworkText : String
//    var Image: String
//    var ImageTITLE: String
//   
//}
//
//
//var finalImage1 : [ArtworkDetail] = [
//    ArtworkDetail(id: 0, artworkText: "이거는 상세설명란이고 1-0임", Image: "Belt.정사각형652", ImageTITLE: "Belt"),
//    ArtworkDetail(id: 1, artworkText: "이거는 상세설명란이고 1-1", Image: "Blouse.652 × 978", ImageTITLE: "Blouse"),
//    ArtworkDetail(id: 2, artworkText: "이거는 상세설명란이고 1-2임", Image: "Bracelet.정사각형652", ImageTITLE: "Bracelet"),
//    ArtworkDetail(id: 3, artworkText: "이거는 상세설명란이고 1-3임", Image: "Choker.652 × 871", ImageTITLE: "Choker"),
//    ArtworkDetail(id: 4, artworkText: "이거는 상세설명란이고 1-4임", Image: "Pants.652 × 978", ImageTITLE: "Pants"),
//    ArtworkDetail(id: 5, artworkText: "이거는 상세설명란이고 1-5임", Image: "Sandals.652 × 871", ImageTITLE: "Sandals")
//   
//
//]
//
//var artworkDetailImageTitle2 : [ArtworkDetail] = [
//    ArtworkDetail(id: 0, artworkText: "이거는 상세설명란이고 2-0임", Image: "Jewel Vest", ImageTITLE: "Jewel Vest"),
//    ArtworkDetail(id: 1, artworkText: "이거는 상세설명란이고 2-1임", Image: "팬츠", ImageTITLE: "팬츠"),
//    ArtworkDetail(id: 2, artworkText: "이거는 상세설명란이고 2-2임", Image: "샌들", ImageTITLE: "샌들"),
//    ArtworkDetail(id: 3, artworkText: "이거는 상세설명란이고 2-3임", Image: "벨트", ImageTITLE: "벨트"),
//   
//
//
//]
//
//var artworkDetailImageTitle3 : [ArtworkDetail] = [
//    ArtworkDetail(id: 0, artworkText: "이거는 상세설명란이고 3-0임", Image: "Belt.정사각형652", ImageTITLE: "Belt"),
//    ArtworkDetail(id: 1, artworkText: "이거는 상세설명란이고 3-1임", Image: "Blouse.652 × 978", ImageTITLE: "Blouse"),
//    ArtworkDetail(id: 2, artworkText: "이거는 상세설명란이고 3-2임", Image: "Bracelet.정사각형652", ImageTITLE: "Bracelet"),
//    ArtworkDetail(id: 3, artworkText: "이거는 상세설명란이고 3-3임", Image: "Choker.652 × 871", ImageTITLE: "Choker"),
//    ArtworkDetail(id: 4, artworkText: "이거는 상세설명란이고 3-4임", Image: "Pants.652 × 978", ImageTITLE: "Pants"),
//    ArtworkDetail(id: 5, artworkText: "이거는 상세설명란이고 3-5임", Image: "Sandals.652 × 871", ImageTITLE: "Sandals")
//
//
//]
//
//
//struct lastGridImage: Identifiable {
//    
//    var id : Int
//    var Image: String
//    var ImageTITLE: String
//    
//}
//
//var a0번사진 : [lastGridImage] = [
//lastGridImage(id: 0, Image: "Belt.정사각형652", ImageTITLE: "Belt"),
//lastGridImage(id: 1, Image: "Blouse.652 × 978", ImageTITLE: "Blouse"),
//lastGridImage(id: 2, Image: "Bracelet.정사각형652", ImageTITLE: "Bracelet"),
//lastGridImage(id: 3, Image: "Pants.652 × 978", ImageTITLE: "Pants"),
//lastGridImage(id: 4, Image: "Sandals.652 × 871", ImageTITLE: "Sandals")
//
//]
//
//var a1번사진 : [lastGridImage] = [
//lastGridImage(id: 0, Image: "Jewel Vest", ImageTITLE: "Jewel Vest"),
//lastGridImage(id: 1, Image: "팬츠", ImageTITLE: "팬츠"),
//lastGridImage(id: 2, Image: "샌들", ImageTITLE: "샌들"),
//lastGridImage(id: 3, Image: "벨트", ImageTITLE: "벨트"),
//lastGridImage(id: 4, Image: "샌들", ImageTITLE: "샌들")
//
//]
