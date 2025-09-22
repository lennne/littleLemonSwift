//
//  RestaurantLocation.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-14.
//

import SwiftUI

struct RestaurantLocation: Hashable {
    let city: String
    let neighborhood: String
    let phoneNumber: String
    
    init(city: String = "", neighborhood: String = "", phoneNumber: String = "") {
        self.city = city
        self.neighborhood = neighborhood
        self.phoneNumber = phoneNumber
    }
}
