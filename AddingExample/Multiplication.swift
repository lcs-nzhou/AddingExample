//
//  Multiplication.swift
//  AddingExample
//
//  Created by Shuyu Zhou on 2023-11-06.
//

import SwiftUI

struct Multiplication: View {
    @State var firstNumber = 0
    @State var secondNumber = 0
    
    var result : Int {
        return firstNumber * secondNumber
    }

    var body: some View {
        Text("\(firstNumber)")
        Stepper(value: $firstNumber, label: {
            Text("select first number")
        })
        Text("×")
        Text("\(secondNumber)")
        Stepper(value: $secondNumber, label: {
            Text("select second number")
        })
        Divider()
        Text("\(result)")
    }
}

#Preview {
    Multiplication()
}
