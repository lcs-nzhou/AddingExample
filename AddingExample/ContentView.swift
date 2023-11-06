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
            Text("+")
            Text("\(secondNumber)")
            Divider()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
