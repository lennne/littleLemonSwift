//
//  RestaurantView.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-14.
//

import SwiftUI

struct RestaurantView: View {
    private var restaurant: RestaurantLocation
    
    init(_ restaurant: RestaurantLocation) {
        self.restaurant = restaurant
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3){
            Text(restaurant.city)
                .font(.title2)
            
            HStack{
                Text(restaurant.neighborhood)
                Text("-")
                Text(restaurant.phoneNumber)
            }
            .font(.caption)
            .foregroundColor(.gray)
        }
    }
}

#Preview {
    let sampleRestaurant = RestaurantLocation(city: "Las Vegas", neighborhood: "Downtown", phoneNumber: "(702) 555-9898")
    RestaurantView(sampleRestaurant)
    
}
