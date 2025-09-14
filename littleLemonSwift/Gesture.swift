//
//  Gesture.swift
//  littleLemonSwift
//
//  Created by Joseph Acquah on 2025-09-14.
//

import SwiftUI

struct Gesture: View {
    @State private var offsetValue = CGSize.zero //tracking translation
    @State private var amount = Angle.zero
    @State private var finalAmount = Angle.zero
    
    //MagnificationGesture
    @State private var magnifyAmount = 0.0
    @State private var finalMagnifyAmount = 1.0
    
    //Sequenced
    @State private var message = "You can long press and then drag"
    
    var body: some View {
        //gesture function definitions
        let longPress = LongPressGesture()
                   .onEnded { _ in
                   print("Long Press detected. Now you can drag me")
                   }


        let drag = DragGesture()
                   .onChanged{ _ in
                       print ("Dragging…")
                   }
        
         
        
        VStack{
            
            //To detect multiple taps use a modifier and parameter
            Text("Little Lemon Restaurant")
            //minimumDuration – The minimum duration of the long press that must elapse before the gesture succeeds.
            //maximumDistance – The maximum distance that the fingers or cursor performing the long press can move before the gesture fails.
            //Perform – The action to perform when a long press is recognized. This closure receives no value.
            //onPressingChanged – A closure to run when the pressing state of the gesture changes, passing the current state as a parameter.
            //State is a Boolean variable that will be true, as soon as a finger touches or a mouse click happens and false, as soon as the long press gesture itself is detected.
                .onLongPressGesture(minimumDuration: 4, maximumDistance: 15, perform: {
                    print("Long Press Detected!")
                },
                onPressingChanged: { state in
                    print(state)
                })
    //            .onTapGesture(count: 2) {
    //                print("Text Tapped!")
    //            }

            
            //This code works like this: a DragGesture, on line 7, is attached to the Little Lemon Logo image, line 4.
            //offsetValue, initialized with CGSize equal to zero on line 2, stores the image's offset.
            //The offset modifier on line 5 is the one that really moves the view.
            //The onChanged closure on line 8 is the one that does all the magic.
            //As soon as the drag gesture is in progress, the closure continuously receives the relative gesture and from that is extracted the translation and stored in offsetValue, line 9.
            Image("littlelemonlogo")
                .offset(offsetValue)
                .gesture( DragGesture().onChanged{ gesture in
                    offsetValue = gesture.translation
                }
            )
            
            
//            This code works like this: two variables are defined, amount, on line 2, and finalAmount, on line 3. These variables store the relative amount of rotation, that is, how much rotation was applied to a view at one time and the total amount of rotation applied to a view, adding all rotations that happened while the application started respectively.
//
//            The modifier rotationEffect (line 6) is the one that rotates the Little Lemon Restaurant logo, on line 5.
//
//            RotationGesture is applied to the logo, on line 8 and has two closures: onChanged (line 9) and onEnded (line 12).
//
//            onChanged is triggered continuously as the rotation gesture is in progress and receives a value that corresponds to the relative rotation. This value is stored in the amount variable on line 10.
//
//            onEnded is triggered when the RotationGesture ends (line 12). When this closure runs, the code adds the amount to finalAmount and sets amount to zero.
            Image("littlelemonlogo")
                    .rotationEffect(amount + finalAmount)
                    .gesture(
                        RotationGesture()
                            .onChanged{ value in
                                amount = value
                            }
                            .onEnded{ value in
                                finalAmount += amount
                                amount = .zero
                            }
                    )
            
            //Magnification Gesture
//            This code works similarly to the RotationGesture.
//
//            Two variables are defined, amount, on line 2, and finalAmount, on line 3. These variables store the relative amount of magnification, that is, how much magnification was applied to a view at one time and the total amount of magnification applied to a view, adding all magnification that happened while the application started, respectively.
//
//            The modifier scaleEffect (line 8) is the one that magnifies the Little Lemon Restaurant logo, on line 7.
//
//            MagnificationGesture is applied to the logo, on line 10 and has two closures: onChanged (line 11) and onEnded (line 14).
//
//            onChanged is triggered continuously as the magnification gesture is in progress and receives a value that corresponds to the relative magnification. This value is stored in the amount variable on line 12. This value is 1 subtracted from it, to obtain the relative magnification, because 1 is the normal scale
//
//            onEnded is triggered when the MagnificationGesture ends (line 14). When this closure runs, the code adds the amount to finalAmount and sets amount to zero.
            Image("littlelemonlogo")
                        .scaleEffect(finalMagnifyAmount + magnifyAmount)
                        .gesture(
                            MagnificationGesture()
                                .onChanged { value in
                                    magnifyAmount = value - 1
                            }
                                .onEnded { value in
                                    finalMagnifyAmount += magnifyAmount
                                    magnifyAmount = 0
                                }
                        )
    //Sequenced
//            SwiftUI lets you create gestures which are sequences of other gestures, allowing you to run actions only when two gestures occur in a particular order.
//
//            The following code shows how to add two gestures, a LongPress and a DragGesture, that happen in sequence. The image view waits for the long press before it can process the drag.
            let sequence = longPress.sequenced(before: drag)
            Image("littlelemonlogo")
                .gesture(sequence)
        }
    }
}

#Preview {
    Gesture()
}
