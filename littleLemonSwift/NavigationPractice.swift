//
//  NavigationPractice.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-14.
//

import SwiftUI

struct NavigationPractice: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Exercise 1")
                NavigationLink(destination: NewView()){
                    Text("Do Something")
                }
            }.navigationTitle("Little Lemon")
        }
    }
}

#Preview {
    NavigationPractice()
}
