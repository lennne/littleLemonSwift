//
//  ContentView.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-08-31.
//

import SwiftUI

struct ContentView: View {
    @State var inputValue: String = "" //control variable
    @ObservedObject private var model = Model()
    var body: some View {

        MainView()
    }
       
}

struct ContentView_Previwes: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
