//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by siva krishna on 14/10/19.
//  Copyright © 2019 Siva Krishna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @State private var countries = ["Estonia", "France",
        "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
   @State private var corretAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var scoreMeesage = ""
    @State private var score = 0
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack {
                    Text("tap the flag of")
                        .foregroundColor(.white)
                    Text(countries[corretAnswer])
                    .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        self.flagTapped(number)
                    }) {
                        Image(self.countries[number])
                            .renderingMode(.original)
                            .clipShape(Capsule())
                            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                            .shadow(color: .black, radius: 2)
                    }
                }
                Text("Your score is \(score)")
                               .foregroundColor(.white)
                               .font(.body)
                               .fontWeight(.bold)
                Spacer()
            }
           
        }
        .alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle), message: Text(scoreMeesage), dismissButton: .default(Text("Continue")) {
                self.askQuestion()
            })
        }
    }
    
    func askQuestion() {
        countries = countries.shuffled()
        corretAnswer = Int.random(in: 0...2)
    }
    
    func flagTapped(_ number: Int) {
        if number == corretAnswer {
            score += 1
            scoreTitle = "Correct"
            scoreMeesage = "Your score is \(score)"
        } else {
            score -= 1
            scoreTitle = "Wrong"
            scoreMeesage = "That's the flag of \(countries[number])"
        }
        showingScore = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




//        Button("Show Alert"){
//            self.isShowingAlert = true
//        }
//        .alert(isPresented: $isShowingAlert) {
//            Alert(title: Text("Hello SwiftUi"), message: Text("some message"), dismissButton: .default(Text("Ok")))
//        }
//        Button("tap me!") {
//            print("Button tapped!")
//        }
//
//        Button(action: {
//            print("Button tapped!")
//        }) {
//            HStack(spacing: 10){
//                Image(systemName: "pencil").renderingMode(.original)
//                    .background(Color.red)
//                Text("Edit")
//            }
//        }
        
//        LinearGradient(gradient: .init(colors: [.black, .white]), startPoint: .top, endPoint: .bottom)
//        RadialGradient(gradient: Gradient(colors: [ .black, .blue]), center: .center, startRadius: 20, endRadius: 300)
//        AngularGradient(gradient: Gradient(colors: [.black, .blue, .yellow, .purple, .red, .green]), center: .center)
