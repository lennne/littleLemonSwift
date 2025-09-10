//
//  Controls.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-09.
//

import SwiftUI

struct Controls: View {
    @State var isShowing = false // toggle state - A toggle won't work unless you've given a truth state
    @State private var value = 1
    @State var selectedDate = Date()
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        return min...max
    }
    var body: some View {
        VStack{
            Button(role: .destructive){
                print("do something!")
            } label: {
                HStack{
                    Image(systemName: "trash")
                    Text("")
                }
            }
            
            Toggle(isOn: $isShowing){
                Text("Hello World")
            }
            
            Text("Current value: \(value)")
            Stepper("Number of guests", value: $value, in: 1...20)
                .padding()
                .navigationTitle("Reservation Form")
            Section{
                DatePicker(
                    selection: $selectedDate,
                    in: dateClosedRange,
                    displayedComponents: .date,
                    label: {Text("Due Date")}
                )
            }
            
            Label("Menu", systemImage: "fork.knife")
                .labelStyle(.titleAndIcon)
        }
    }
}

#Preview {
    Controls()
}
