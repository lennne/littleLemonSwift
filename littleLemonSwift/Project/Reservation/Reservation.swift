//
//  Reservation.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-14.
//

import SwiftUI

struct Reservation: View {
    var restaurant: RestaurantLocation
    var customerName: String
    var customerEmail: String
    var customerPhoneNumber: String
    var reservationDate: Date
    var party: Int
    var specialRequests: String
    var id = UUID()
    
    init(restaurant: RestaurantLocation = RestaurantLocation(),
         customerName: String = "",
         customerEmail: String = "",
         customerPhoneNumber: String = "",
         reservationDate: Date = Date(), //we initialize a temporary date here
         party: Int = 1,
         specialReqeusts: String = "" ){
        self.restaurant = restaurant
        self.customerName = customerName
        self.customerEmail = customerEmail
        self.customerPhoneNumber = customerPhoneNumber
        self.reservationDate = reservationDate
        self.party = party
        self.specialRequests = specialReqeusts
    }
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Reservation()
}
