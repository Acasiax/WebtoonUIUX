//
//  WebtoonUIUXApp.swift
//  WebtoonUIUX
//
//  Created by 이윤지 on 3/25/24.
//

import SwiftUI

@main
struct WebtoonUIUXApp: App {
    var body: some Scene {
        WindowGroup {
            TabBar(selectedYoutube: .constant(nil), selectedBrand: .constant(nil))
         
               // .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
        }
    }
}
