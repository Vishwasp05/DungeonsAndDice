//
//  ContentView.swift
//  DungeonsAndDice
//
//  Created by Vishwas Sharma on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    enum Dice: Int {
        case four = 4
        case six = 6
        case eight = 8
        case ten = 10
        case twelve = 12
        case twenty = 20
        case hundred = 100
        
        func roll() -> Int {
            return Int.random(in: 1...self.rawValue)
        }
    }
    
    @State private var resultMessage = "You rolled a \(Dice.hundred.roll()) on a \(Dice.hundred.rawValue)-sided dice"
    var body: some View {
        VStack {
            Text("Dungeon Dice")
                .font(.largeTitle.bold())
                .foregroundStyle(.red)
            
            Spacer()
            
            Text(resultMessage)
                .font(.title3)
                .multilineTextAlignment(.center)
            Spacer()
            Spacer()
            
            ForEach(0 ..< 6) {_ in
                Grid {
                    ButtonView()
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
