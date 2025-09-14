//
//  ReservationCalendar.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-10.
//

import SwiftUI

struct ReservationCalendar: View {
    @State var selectedDate = Date()
    var body: some View {
        Form {
            HStack{
                DatePicker(
                    "",
                    selection: $selectedDate,
                    displayedComponents: [.date, .hourAndMinute],
                )
                Button(action: {
                    print("Selected date: \(selectedDate)")
                }){
                HStack{
                    Image(systemName: "checkmark")
                    Text("Done")
                }
            }
         
            }.padding(20);
            Text("\(selectedDate)")
        }
    }
}

#Preview {
    ReservationCalendar()
}
