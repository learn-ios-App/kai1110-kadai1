//
//  ContentView.swift
//  kai1110-kadai1
//
//  Created by 渡邊魁優 on 2022/11/06.
//

import SwiftUI

struct ContentView: View {
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var number3 = ""
    @State private var number4 = ""
    @State private var number5 = ""
    @State private var sumNumber = 0
    
    var body: some View {
        VStack {
            TextField("", text:$number1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("", text:$number2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("", text:$number3)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("", text:$number4)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("", text:$number5)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                sumNumber = 0
                plusNumber(number: number1)
                plusNumber(number: number2)
                plusNumber(number: number3)
                plusNumber(number: number4)
                plusNumber(number: number5)
            }) {
                Text("計算")
            }
            .padding()
            Text("合計:\(sumNumber)")
        }
    }
    func plusNumber(number: String) {
        if let unwrappedNumber = Int(number) {
            sumNumber += unwrappedNumber
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
