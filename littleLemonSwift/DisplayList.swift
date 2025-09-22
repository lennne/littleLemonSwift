//
//  DisplayList.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-14.
//

import SwiftUI

struct DisplayList: View {
    //variable observes Model
    @ObservedObject var model = Model()
    
    var body: some View {
        
        VStack{
            
            List{
                // + is defined for two arrays
                //did this to add an element when rendering
//                ForEach(model.meals + [Item(name: "Tortillas")]){ item in
//                    Text(item.name)
//                }
            }
        }
    }
}


//identifiable struct
struct Item: Identifiable {
    var name: String
    var id = UUID()
}

//Create a model observable object
//class Model: ObservableObject{
//    @Published var meals: [Item] = menuItems()
//    static func menuItems () -> [Item] {
//        return [
//            Item(name: "Lasagna"),
//            Item(name: "Fetuccini Alfredo"),
//            Item(name: "Spaghetti"),
//            Item(name: "Avocado Toast"),
//            Item(name: "Tortellini"),
//            Item(name: "Pizza")
//        ]
//    }
//}


#Preview {
    DisplayList()
}
