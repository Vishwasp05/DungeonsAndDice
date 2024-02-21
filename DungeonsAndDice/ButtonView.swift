//
//  ButtonView.swift
//  DungeonsAndDice
//
//  Created by Vishwas Sharma on 21/02/24.
//

import SwiftUI

struct ButtonView: View {
    let dices =  ["4-sided","6-sided","8-sided","10-sided","12-sided","20-sided","100-sided"]
    var body: some View {
        Button("4-sided") {
            //MARK: button action goes here
        }
        .buttonStyle(.borderedProminent)
        .tint(.red)
        
        
        
    }
}

#Preview {
    ButtonView()
}
