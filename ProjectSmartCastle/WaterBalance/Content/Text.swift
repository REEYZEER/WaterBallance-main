//
//  Text.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct Title: View {
    var text: String
    var FontSize: Double
    var body: some View {
        Text(text)
            .textCase(.uppercase)
            .font(.system(size: FontSize, weight: .black))
            .foregroundColor(.blue)
    }
}

struct Title2: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.system(size: 36, weight: .semibold))
            .foregroundColor(.black)
    }
}

struct PlainText:View{
    var text: String
    var fontText: Double
    var body: some View{
        Text(text)
            .font(.system(size: fontText))
        
    }
}
//struct Text_Previews: PreviewProvider {
//    static var previews: some View {
//        Title2(text: "What is your goal?")
//    }
//}
