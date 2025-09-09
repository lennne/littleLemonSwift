//
//  ContentView.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-08-31.
//

import SwiftUI

struct ContentView: View {
    @State var inputValue: String = "" //control variable
    var body: some View {
        VStack{
            //simple Text element to display some text
            //styling the text element
            ReservationForm()
        }
       
    }
       
}

struct ContentView_Previwes: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
