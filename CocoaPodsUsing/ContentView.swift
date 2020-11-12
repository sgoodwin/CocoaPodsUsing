//
//  ContentView.swift
//  CocoaPodsUsing
//
//  Created by Samuel Goodwin on 11/12/20.
//

import SwiftUI
import MovingNumbersView

// We're using this nice custom label that comes from here: https://github.com/aunnnn/MovingNumbersView

struct ContentView: View {
    @State var value: Double = 4.0
    
    var body: some View {
        VStack {
            MovingNumbersView(number: value, numberOfDecimalPlaces: 2) { value in
                Text(value)
                    .font(.title)
            }
            
            Button("Tap Me") {
                value = Double.random(in: 0.0..<10.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
