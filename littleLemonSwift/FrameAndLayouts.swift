//
//  FrameAndLayouts.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-09.
//

import SwiftUI

struct FrameAndLayouts: View {
    var body: some View {
        VStack(alignment: .leading){ //  VStack arranges its child views vertically but aligns them in the horizontal direction
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello World")
             //   .frame(width: 200, height: 50) // The .frame() modifier creates a new invisible view with the specified size. The TextView is inside that new view.
                .padding()
            // Spacer() spacer creates too much space
            HStack { //HStack arranges its child views horizontally, but aligns them in a vertical direction.
                
               Button("One") {}
               Button("Two") {}
               Button("Three") {}
           }
        }
        .frame(width: 300, alignment: .leading) //Now you can try the second way to change alignment. The frame modifier also takes an argument for alignment.
        .padding()
        
        
    }
}

#Preview {
    FrameAndLayouts()
}
