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
        HStack {
            Spacer()
            Text("\(firstNumber)")
                .font(Font .system(size: 50))
                .padding(.trailing)
        }
        Stepper(value: $firstNumber, label: {
            Text("select first number")
        })
        .padding()
        HStack {
            Text("×")
                .font(Font .system(size: 50))
                .padding(.leading)
            Spacer()
            Text("\(secondNumber)")
                .font(Font .system(size: 50))
                .padding(.trailing)
        }
        
        Stepper(value: $secondNumber, label: {
            Text("select second number")
        })
        .padding()
        Divider()
        HStack {
            Spacer()
            Text("\(result)")
                .font(Font .system(size: 50))
            .padding(.trailing)
        }
    }
}

#Preview {
    Multiplication()
}
