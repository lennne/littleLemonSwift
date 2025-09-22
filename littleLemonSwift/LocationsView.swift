//
//  LocationsView.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-14.
//

import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        VStack{
            LittleLemonLogo()
                .padding(.top, 50)
            //This displays a text at the top of the page and displays "Reservation Details"
            //when the form is displaying or "select a location" when the form is not displaying
            Text(model.displayingReservationForm ? "Reservation Details" : "Select a location")
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            
            NavigationView {
                List(model.restaurants, id: \.self) { restaurant in
                    NavigationLink(destination: ReservationFormProject(restaurant)){
                        RestaurantView(restaurant)
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            .onDisappear{
                if model.tabBarChanged { return }
                
                model.displayingReservationForm = true
                
                
            }
            .frame(maxHeight: .infinity)
            .padding(.top, -10)
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    LocationsView().environmentObject(Model())
}
