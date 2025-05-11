//
//  TextFildPage3.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct TextFieldPage3: View {
    @State var selectedText = 0
    var body: some View {
        ZStack{
            Frame2()
            HStack(spacing:12){
                ZStack{
                    Frame22()
                    TextField("Number", value: $selectedText, format: .number)
                        .frame(width: 202, height: 28)
                }
                PlainText(text: "ML", fontText: 16.0)
            }
        }
    }
}

struct TextFildPage3_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPage3()
    }
}
