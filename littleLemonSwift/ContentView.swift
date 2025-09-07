//
//  ContentView.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-08-31.
//

import SwiftUI

struct ContentView: View {
    @State var personCount: Int = 1
    @State var showLogo: Bool = true
    var body: some View {
        VStack {
            MyView()
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            Stepper {
                Text("Reservation for: \(personCount)")
            } onIncrement: {
                personCount += 1
            } onDecrement: {
                personCount = (personCount == 1) ? 1 : personCount - 1
            }
            
            if showLogo {
                LittleLemonLogo(bindingVariable: $showLogo)
            }
            
        }
        .padding()
    }
}

struct LittleLemonLogo: View {
    @Binding var bindingVariable: Bool
    var body: some View{
        VStack{
            Image("LittleLemonLogo")
            Button(action: {
                bindingVariable.toggle()
            }, label: {
                Text("Toggle Logo Visibility").font(.title2)
            })
        }
    }
}

struct ContentView_Previwes: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
