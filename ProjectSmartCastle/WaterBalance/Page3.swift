//
//  Page3.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct Page3: View {
    var body: some View {
        VStack(spacing: 80){
            Title(text:"WATER BALANCE",FontSize: 24)
            VStack(spacing: 32){
                Title2(text: "Daily intake?")
                VStack(spacing:316){
                    TextFieldPage3()
                    CustomButton2(text: "Save")
                }
            
            }
        } .offset(y:-20)
    }
}

struct Page3_Previews: PreviewProvider {
    static var previews: some View {
        Page3()
    }
}
