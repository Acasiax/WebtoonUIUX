//
//  TabBar.swift
//  designTabBar
//
//  Created by 이윤지 on 2023/06/27.
//

import SwiftUI

struct TabBar: View {
    @State var selectedTab: Tab = .home
    @State var color: Color = .teal
    @Binding var selectedYoutube: FashionShow!
    @Binding var selectedBrand: Brand!
    
    
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            
            Group {
                switch selectedTab {
                case .home:
                    //ContentView()
                    PlanetHome(data: brands)
                case .explore:
                 
                   // HomeView(mainAlbums: albums[0], mainPodcasts: albums[0], isledessts: albums[0])
                    
                    HomeViewW(mainAlbums: albums[0], mainPodcasts: albums[0], isledessts: albums[0], selectedBrand: $selectedBrand, selectedYoutube: $selectedYoutube)
                    
                case .notifications:
                    HomeProductsHero()
                case .library:
                    AccountView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack {
                ForEach(tabItems) {item in
                    Button {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.7)){
                            selectedTab = item.tab
                            color = item.color
                        }
                       
                    } label: {
                        VStack(spacing: 0){
                            Image(systemName: item.icon)
                                .symbolVariant(.fill)
                                .font(.body.bold())
                                .frame(width: 44, height: 29)
                            Text(item.text)
                                .font(.caption2)
                                .lineLimit(1)
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .foregroundStyle(selectedTab == item.tab ? .primary : .secondary)
                    .blendMode(selectedTab == item.tab ? .overlay : .normal)
                }
            }
            .padding(.horizontal, 8)
            .padding(.top, 14)
            .frame(height: 88, alignment: .top)
            .background (.ultraThinMaterial, in:
            RoundedRectangle(cornerRadius: 34, style: .continuous))
            .background(
                HStack{
                    if selectedTab == .library { Spacer() }
                    if selectedTab == .explore { Spacer() }
                    if selectedTab == .notifications {
                        Spacer()
                        Spacer()
                    }
                    
                    Circle().fill(color).frame(width: 88)
                    if selectedTab == .home { Spacer()}
                    if selectedTab == .explore {
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .notifications { Spacer() }
                }
                    .padding(.horizontal, 8)
            )
            .overlay(
                HStack{
                    if selectedTab == .library { Spacer() }
                    if selectedTab == .explore { Spacer() }
                    if selectedTab == .notifications {
                        Spacer()
                        Spacer()
                    }
                    
                    Rectangle()
                        .fill(color)
                        .frame(width: 28, height: 5)
                        .cornerRadius(3)
                        .frame(width: 88)
                        .frame(maxHeight: .infinity, alignment: .top)
                    if selectedTab == .home { Spacer()}
                    if selectedTab == .explore {
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .notifications { Spacer() }
                }
                    .padding(.horizontal, 8)
            )
            
            
//            .strokeStyle(cornerRadius: 34)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(selectedYoutube: .constant(nil), selectedBrand: .constant(nil))
    }
}
