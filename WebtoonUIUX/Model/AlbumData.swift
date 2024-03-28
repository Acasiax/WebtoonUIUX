//
//  AlbumData.swift
//  musicMusic
//
//  Created by 이윤지 on 2023/06/21.
//

import Foundation

struct Album: Identifiable{
    var id = UUID().uuidString
    var albumImage : String
    var albumShowTitle : String
    var artistImage : String
    var artistName : String
    var badge : Bool
    var year : String
    var date : String
    var songs : Int
    var time : String
    var copyright : String
    var youtubeID: String
    var youtubeURL: String
    //var 패션쇼 설명 이것도 배열에 연결해서 가져오는게 나을 듯
    var showDetail: String

}

//GUCCI Slay Show
//Burberry Slay Show
//Chanel Slay Show

var albums: [Album] = [
    Album( albumImage: "GUCCI Slay Show 1", albumShowTitle: fashionShowListGucci[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: brands[0].fashionShows[0].youtubeID, youtubeURL: "https://www.youtube.com/live/rIUdA21wEPc?feature=share", showDetail: brands[1].fashionShows[0].showDetail),

    Album(albumImage: "GUCCI Slay Show 1", albumShowTitle: fashionShowListGucci[1].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/lkvsiTD3bF4?feature=share", showDetail: brands[1].fashionShows[1].showDetail),


    Album(albumImage: "GUCCI Slay Show 1", albumShowTitle: fashionShowListGucci[1].showTitle, artistImage: "samplemonvie1", artistName: " 마르켈리아", badge: true, year: "2020 ", date: " 0311", songs: 1, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/Wr4w5i1xFEo?feature=share", showDetail: "")

]


var albums6COLOR: [Album] = [
    
    Album(albumImage: "GUCCI Slay Show 1", albumShowTitle: fashionShowListGucci[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/Wr4w5i1xFEo?feature=share", showDetail: brands[1].fashionShows[0].showDetail),

    
    
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: brands[0].fashionShows[0].youtubeID, youtubeURL: "https://www.youtube.com/live/rIUdA21wEPc?feature=share", showDetail: brands[0].fashionShows[0].showDetail),
    

    Album(albumImage: "YSL Slay Show", albumShowTitle: fashionShowListYSL[0].showTitle, artistImage: "버버리-리카르도티시", artistName: " 마르켈리아", badge: true, year: "2020 ", date: " 0310", songs: 1, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/I2uIi0GT8Qg?feature=share", showDetail: brands[2].fashionShows[0].showDetail),
    
    
    Album(albumImage: "DIOR Slay Show", albumShowTitle: fashionShowListDior[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/ZnS1UMJayoI?feature=share", showDetail: brands[3].fashionShows[0].showDetail),
    
    Album(albumImage: "PRADA Slay Show", albumShowTitle: fashionShowListPRADA[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/BGWhB8dOKhc?feature=share", showDetail: brands[4].fashionShows[0].showDetail),
    
    Album(albumImage: "Burberry Slay Show", albumShowTitle: fashionShowListBURBERRY[0].showTitle, artistImage: "버버리-리카르도티시", artistName: "마르켈리아", badge: true, year: "2020 ", date: " 0309", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: "", youtubeURL: "https://www.youtube.com/live/jvR4lRIBZtA?feature=share", showDetail: brands[5].fashionShows[0].showDetail),
    

]

//샤넬 리스트
var albumsChanel: [Album] = [
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[0].showTitle, artistImage: "비르진이 비에르", artistName: "비르진이 비에르", badge: true, year: "2020 ", date: "2023/24", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: brands[1].fashionShows[0].youtubeID, youtubeURL:  fashionShowListChannel[0].youtubeURL, showDetail:  fashionShowListChannel[0].showDetail),

    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[1].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023/24", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[1].youtubeID, youtubeURL: fashionShowListChannel[1].youtubeURL, showDetail: fashionShowListChannel[1].showDetail),
    
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[2].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[2].youtubeID, youtubeURL: fashionShowListChannel[2].youtubeURL, showDetail: fashionShowListChannel[2].showDetail),
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[3].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[3].youtubeID, youtubeURL: fashionShowListChannel[3].youtubeURL, showDetail: fashionShowListChannel[3].showDetail),
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[4].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[4].youtubeID, youtubeURL: fashionShowListChannel[4].youtubeURL, showDetail: fashionShowListChannel[4].showDetail),
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[5].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[5].youtubeID, youtubeURL: fashionShowListChannel[5].youtubeURL, showDetail: fashionShowListChannel[5].showDetail),
    Album( albumImage: "Chanel Slay Show", albumShowTitle: fashionShowListChannel[6].showTitle, artistImage: "비르진이 비에르", artistName: "마르켈리아", badge: true, year: "2020 ", date: "2023", songs: 0, time: "12시20분 ", copyright: " 공공공", youtubeID: fashionShowListChannel[6].youtubeID, youtubeURL: fashionShowListChannel[6].youtubeURL, showDetail: fashionShowListChannel[6].showDetail),
    
    
    
]
