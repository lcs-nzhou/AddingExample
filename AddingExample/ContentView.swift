//
//  ContentView.swift
//  AddingExample
//
//  Created by Shuyu Zhou on 2023-11-06.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstNumber = 2
    @State var secondNumber = 3
    
    
    var body: some View {
        VStack {
            Text("2")
            Text("+")
            Text("3")
            Divider()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
