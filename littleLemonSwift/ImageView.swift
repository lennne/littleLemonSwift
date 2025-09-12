//
//  ImageView.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-11.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("LittleLemonLogo")
            .resizable()
            .scaledToFit()
            .frame(width: 400,
                   height: 400,
                   alignment: .trailing
            )
        
    }
}


#Preview{
    ImageView()
}
