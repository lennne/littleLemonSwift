//
//  MainView.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-09.
//

import SwiftUI

struct MainView: View {
    @StateObject var model = Model()
    @State var tabSelection = 0
    var body: some View {
        
        TabView{
            LocationsView()
                .tag(0)
                .tabItem{
                    //if model is not displaying reservation form then perform the function
                    // which means when displayingReservationForm is false(not displaying)
                    // then the block of code runs,
                    // in simple terms, this block of code will run when displayingReservationForm
                    // is false(not displaying Reservation Form)
                    if !model.displayingReservationForm {
                        Label("Locations", systemImage: "fork.knife")
                    }
                }
            
            ReservationView()
                .tag(1)
                .tabItem{
                    if !model.displayingReservationForm {
                        Label("Reservation", systemImage: "square.and.pencil")
                    }
                }
        }
        .environmentObject(model)
        
        
        
        
        
        
        
        
//        ZStack{
//            Color.green.opacity(0.5).ignoresSafeArea()
//            HStack{
//                Text("Demo")
//                    .scaledToFit() //this scales the element to fit
//                    .frame( width: 100, height: 100, alignment: .center)
//                VStack(spacing: 10){
//                    Text("Little Lemon").font(.title)
//                    Text("Tomato Tortellini, Bottarga and Carbonara").font(.title3)
//                        .multilineTextAlignment(.center)
//                }.padding()
//            }.padding()
//        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
