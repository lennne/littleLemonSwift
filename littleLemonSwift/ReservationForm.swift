//
//  ReservationForm.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-08.
//

import SwiftUI
//created a new view containing a form
struct ReservationForm: View {
    @State var customerName:String = ""
    var body: some View {
      
            Form{
                //Detect when a the TextField changes
                //you will add a modifier to the TextField to detect user interaction with the
                //element, and print these changes to the terminal.
                TextField("Type Your name", text: $customerName, onEditingChanged: {status in print(status)}) //there is another variation of the TextField command that triggered the moment editing starts and ends.
                // This variation uses the closure on editing change, which receives a Boolean value that will be true when editing begins
                //and false when return is pressed and editing ends
                    .onChange(of: customerName) { oldValue, newValue in print(newValue)}
                    .onSubmit {
                        print("submitted")
                    }
            }
        
    }
}

struct Reservation_Preview: PreviewProvider {
    static var previews: some View {
        ReservationForm()
    }
}
