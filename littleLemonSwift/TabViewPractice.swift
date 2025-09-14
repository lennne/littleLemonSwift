//
//  TabViewPractice.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-14.
//

import SwiftUI

struct TabViewPractice: View {
    var body: some View {
        VStack{
            TabView {
                Text("This is the share view")
                    .tabItem({
                        Label("Share",  systemImage: "square.and.arrow.up")
                    })
                Text("This is the Trash view")
                    .tabItem({
                        Label("", systemImage: "trash")
                    }).badge(1)
            }
        }
    }
}

#Preview {
    TabViewPractice()
}
