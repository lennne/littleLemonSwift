//
//  ContentView.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-08-31.
//

import SwiftUI

struct ContentView: View {
    @State var personCount: Int = 1
    @ObservedObject var myClass = MyClass()
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
            
            if myClass.showLogo {
                LittleLemonLogo(myClass: myClass)
            }
            
        }
        .padding()
    }
}

//this block of code functions similar to an interface in Java/ objected oriented programming
class MyClass:ObservableObject {
    @Published var showLogo = true
}
 
struct LittleLemonLogo: View {
    var myClass: MyClass
    var body: some View {
        VStack{
            Image("LittleLemonLogo")
            Button(action: {
                myClass.showLogo.toggle()
            }, label: {
                Text("Toggle Logo Visibility Off").font(.title2)
            })
        }
    }
}

struct ContentView_Previwes: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
