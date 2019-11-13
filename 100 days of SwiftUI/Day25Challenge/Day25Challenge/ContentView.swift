//
//  ContentView.swift
//  Day25Challenge
//
//  Created by siva krishna on 05/11/19.
//  Copyright © 2019 Siva Krishna. All rights reserved.
//

import SwiftUI

extension String {
    func image() -> UIImage? {
        let size = CGSize(width: 40, height: 40)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIColor.white.set()
        let rect = CGRect(origin: .zero, size: size)
        UIRectFill(CGRect(origin: .zero, size: size))
        (self as AnyObject).draw(in: rect, withAttributes: [.font: UIFont.systemFont(ofSize: 40)])
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

struct ContentView: View {
    private var moves = ["🤘", "✋", "🖖"]
    @State private var systemChocie = Int.random(in: 0...2)
    @State private var shouldWin = Bool.random()
    @State private var score = 0
    @State private var scoreTitle = ""
    @State private var showingScore = false
    var body: some View {
        VStack (spacing: 30) {
            VStack {
                Text("System Choice")
                Text(moves[systemChocie])
                    .font(.largeTitle)
            }
           
//            Text(moves[systemChocie])
            
//             moves.forEach { choice in
//                Button(action: {
//                    print("Button tapped")
//                }){
//                    Text(choice)
//                }
//            }
            Text( shouldWin ? "Must Win" : "Must Loose")
            HStack (spacing: 20) {
                ForEach(0 ..< 3) { choice in
                    Button(action: {
                        self.choiceSeletced(choice)
                    }){
                        Text(self.moves[choice])
                        .font(.largeTitle)
                        .clipShape(Circle())
                            .border(Color.black, width: 2)
                    }
                }
//                ForEach(moves, id: \.self) { choice in
//                    Button(action: {
//                        self.choiceSeletced(choice)
//                    }){
//                        Text(choice)
//                        .font(.largeTitle)
//                        .clipShape(Circle())
//                            .border(Color.black, width: 2)
//                    }
//                }
            }
            Text("Current Score \(score)")
        }.alert(isPresented: $showingScore) {
    Alert(title: Text(scoreTitle), message: Text("Score \(score)"), dismissButton: .default( Text("Continue")) {
                self.askAgain()
                })
        }
    }
    
    func askAgain() {
        systemChocie = Int.random(in: 0...2)
        shouldWin    = Bool.random()
    }
    
    func choiceSeletced(_ selected: Int){
        if shouldWin {
            var valueCheck = 0
            if systemChocie == moves.count - 1 {
                valueCheck = 0
            } else {
                valueCheck = systemChocie + 1
            }
            if valueCheck == selected {
                score += 1
                scoreTitle = "Win"
            } else {
                score -= 1
                scoreTitle = "Loose"
            }
        } else {
            var valueCheck = 0
            if systemChocie == 0 {
                valueCheck = moves.count - 1
            } else {
                valueCheck = systemChocie - 1
            }
            if valueCheck == selected {
                score += 1
                scoreTitle = "Win"
            } else {
                score -= 1
                scoreTitle = "Loose"
            }
        }
        showingScore = true
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
