//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by siva krishna on 30/10/19.
//  Copyright © 2019 Siva Krishna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var useredtext = false
    
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")

    var body: some View {
//        Text("Hello World")
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//            .edgesIgnoringSafeArea(.all)
        
//        Button("Hello World") {
//            print(type(of: self.body))
//        }
//        .background(Color.red)
//        .frame(width:200, height: 200)
//        .background(Color.red)
        
//        Text("hello world")
//        .padding()
//            .background(Color.red)
//        .padding()
//            .background(Color.green)
//        .padding()
//            .background(Color.blue)
//        .padding()
//            .background(Color.yellow)
        
//        Button("Hello world") {
//            self.useredtext.toggle()
//        }
//        .foregroundColor(useredtext ? .red : .blue)
        
//        VStack {
//            Text("eqrtwterewr")
//                .font(.largeTitle)
//            Text("ewwqrwgdafd")
//            Text("dafsgdf")
//            Text("fdsfsdgfsg")
//        }
//        .font(.title)
//
         // font() is a environment modifier
//        VStack {
//                   Text("eqrtwterewr")
//                    .blur(radius: 0)
//                   Text("ewwqrwgdafd")
//                   Text("dafsgdf")
//                   Text("fdsfsdgfsg")
//               }
//           .blur(radius: 5)
        // blur() is a regular modifier
        
//        VStack {
//            motto1
//                .foregroundColor(.red)
//            motto2
//                .foregroundColor(.green)
//        }
        
//        VStack(spacing: 25) {
//            CapsuleTextView(text: "First")
//                .foregroundColor(.black)
//            CapsuleTextView(text: "second")
//        }
        Text("Hello World")
        .blueStyle()
        
}

}

struct BlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func blueStyle() -> some View {
        self.modifier(BlueTitle())
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
        .padding()
            .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

struct CapsuleTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
        .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
