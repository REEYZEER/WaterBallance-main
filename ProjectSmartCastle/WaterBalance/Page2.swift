//
//  Page2.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct Page2: View {
    var body: some View {
        VStack(spacing: 80){
            Title(text:"WATER BALANCE",FontSize: 24)
            VStack(spacing: 32){
                Title2(text: "Remind me each")
                VStack(spacing:116){
                    ChexBoxPage2()
                    CustomButton2(text: "Next")
                }
            } 
        } .offset(y:40)
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
    }
}
