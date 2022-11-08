
import SwiftUI

struct ContentView: View {
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var number3 = ""
    @State private var number4 = ""
    @State private var number5 = ""
    @State private var sumNumber = 0
    
    var body: some View {
        VStack(spacing: 32) {
            TextField("", text:$number1)
            TextField("", text:$number2)
            TextField("", text:$number3)
            TextField("", text:$number4)
            TextField("", text:$number5)

            
            Button(action: {
                let num1 = parseNumber(number: number1)
                let num2 = parseNumber(number: number2)
                let num3 = parseNumber(number: number3)
                let num4 = parseNumber(number: number4)
                let num5 = parseNumber(number: number5)
                sumNumber = num1 + num2 * num3 + num4 + num5
                
//                sumNumber = 0
//                plusNumber(number: number1)
//                plusNumber(number: number2)
//                plusNumber(number: number3)
//                plusNumber(number: number4)
//                plusNumber(number: number5)
            }) {
                Text("計算")
            }
            Text("合計:\(sumNumber)")
        }
        //textFieldstyleはまとめることができる。
        .keyboardType(.numberPad)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
    }
    
    func parseNumber(number: String) -> Int {
        Int(number) ?? 0
    }
    
//    func plusNumber(number: String) {
//        if let unwrappedNumber = Int(number) {
//            sumNumber += unwrappedNumber
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
