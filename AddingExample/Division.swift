//
//  Division.swift
//  AddingExample
//
//  Created by Shuyu Zhou on 2023-11-06.
//

import SwiftUI

struct Division: View {
    @State var firstNumber = 0
    @State var secondNumber = 0
    
    var result : Int {
        return firstNumber/secondNumber
    }
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("\(firstNumber)")
                    .font(Font.system(size: 50))
                    .padding(.trailing)
            }
            Stepper(value: $firstNumber, label: {
                Text("select first number")
            })
            .padding()
            HStack{
                Text("÷")
                    .padding(.leading)
                Spacer()
                Text("\(secondNumber)")
                    .padding(.trailing)
            }
            .font(Font .system(size: 50))
            Stepper(value: $secondNumber, label: {
                Text("select second number")
            })
            .padding()
            Divider()
            HStack{
                Spacer()
                Text("\(result)")
                    .padding(.trailing)
            }
        }
    }
}

#Preview {
    Division()
}
