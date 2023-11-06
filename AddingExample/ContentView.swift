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
            HStack {
                Spacer()
                Text("\(firstNumber)")
                    .font(Font .system(size: 50))
                    .padding(.trailing)
            }
            
            Stepper(value: $firstNumber, label: {
                Text("select first number")
            })
            
            HStack {
                Text("+")
                    .font(Font .system(size: 50))
                Spacer()
                Text("\(secondNumber)")
                    .font(Font .system(size: 50))
                    .padding(.trailing)
            }
            
            Stepper(value: $secondNumber, label: {
                Text("select second number")
            })
            
            Divider()
            
            HStack {
                Spacer()
                Text("\(sum)")
                    .font(Font .system(size: 50))
                .padding(.trailing)
            }
        }
        .padding()
    }
}

#Preview {
    TabView {
        ContentView()
                    .tabItem {
                        Image(systemName: "plus")
                        Text("Plus")
                    }
        SwiftUIView()
            .tabItem {
                Image(systemName: "minus")
                Text("Minus")
            }
        Multiplication()
            .tabItem {
                Image(systemName: "multiply")
                Text("Multiply")
            }
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
    }
    // Change the accent olor for the currently active tab item
    .accentColor(.purple)
    
}
