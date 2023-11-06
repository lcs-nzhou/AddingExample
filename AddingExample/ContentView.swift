//
//  ContentView.swift
//  AddingExample
//
//  Created by Shuyu Zhou on 2023-11-06.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstNumber = 9
    @State var secondNumber = 3
    
    
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
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
