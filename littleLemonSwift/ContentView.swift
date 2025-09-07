//
//  ContentView.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-08-31.
//

import SwiftUI

struct ContentView: View {
    @State var inputValue: String = ""
    var body: some View {
        VStack{
            //simple Text element to display some text
            //styling the text element
            Text("Subscribe Now").font(.system(size: 36,
                                               weight: .light,
                                               design: .serif))
                                            .italic()
            
            // a more sophisticated way of displaying text
            let sophisticatedString = try!
            AttributedString(
            markdown: "Sign up to our Newsletter lakdjflkj aldjf lakdjsf laksjdf laksdj flaksjdf lsdkjfa klsj and get **30%** off!")
        
            //use of modifiers
        Text(sophisticatedString).font(.system(size: 36,
                                               weight: .light,
                                               design: .serif))
                                .italic()
                                .fixedSize(horizontal: false, vertical: true)//a modifier that specifies how many lines your textField can have
            
//            that the modifiers are executed in the order they are typed in the code
            
            Text("Little Lemon Restaurant")
                .font(.title)
                .foregroundColor(.gray)
                .padding(10) //spacing value
                .background(Color.black)
            
            //other forms of padding
            Text("Little Lemon Restaurant")
                .font(.title)
                .foregroundColor(.gray)
                .padding([.leading, .trailing],20) //spacing value
                .background(Color.black)
            
            //other forms of padding
            Text("Little Lemon Restaurant")
                .font(.title)
                .foregroundColor(.gray)
                .padding([.top, .bottom],20) //spacing value
                .background(Color.black)
            
            //other forms of padding
            Text("Little Lemon Restaurant")
                .font(.title)
                .foregroundColor(.gray)
                .padding(.top,20) //specifying one spacing value
                .background(Color.black)
            
            //other forms of padding
            Text("Little Lemon Restaurant")
                .font(.title)
                .foregroundColor(.gray)
                .padding(.init(top: 20, leading: 20, bottom: 10, trailing: 20)) //specifying each spacing value
                .background(Color.black)
            
//            Another thing to think about it is the difference between the two modifiers
            Text("Little Lemon Restaurant")
                       .font(.title)
                       .foregroundColor(.gray)
                       .background(Color.black)
                       .padding()
                       .background(Color.gray)
            
            
            
            TextField("Type your name", text: $inputValue) //element that takes in an input //this
        }
       
    }
       
}

struct ContentView_Previwes: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
