//
//  GestureRecognizer.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-14.
//

import SwiftUI

struct GestureRecognizer: View {
    @State var flag = false
    var body: some View {
        Text("Tap Me")
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding(15)
            .background( flag ? Color.yellow : Color.green)
            .onTapGesture {
                flag.toggle()
            }
          
    }
}

#Preview {
    GestureRecognizer()
}
