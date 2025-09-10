//
//  CombiningStacks.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-09.
//

import SwiftUI

struct CombiningStacks: View {
    var body: some View {
        ZStack{
            Color.green.opacity(0.5).ignoresSafeArea()
            VStack{
                Text("Hope the real live forever")
                HStack{
                    Button("Hello"){}
                    Button("World"){}
                }
            }
        }
    }
}

#Preview {
    CombiningStacks()
}
