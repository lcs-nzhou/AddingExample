//
//  ContentView.swift
//  AddingExample
//
//  Created by Shuyu Zhou on 2023-11-06.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    //       Store, or keep, a single value
    @State var firstNumber = 9
    @State var secondNumber = 3
    
    // MARK: Computed properties
    
    // Calculate the sum of the numbers
    var sum: Int {
        return firstNumber + secondNumber
    }
    
    // User interface
    var body: some View {
        VStack {
            Text("\(firstNumber)")
            Stepper(value: $firstNumber, label: {
                Text("select first number")
            })
            Text("+")
            Text("\(secondNumber)")
            Stepper(value: $secondNumber, label: {
                Text("select second number")
            })
            Divider()
            Text("\(sum)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
