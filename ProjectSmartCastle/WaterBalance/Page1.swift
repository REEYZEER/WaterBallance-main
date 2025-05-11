//
//  Main.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct Main: View {
    var body: some View {
        VStack(spacing:62){
            Title(text:"WATER BALANCE",FontSize: 24)
            Title2(text: "What is your goal?")
            VStack(spacing:116){
                ClickChexBox()
                CustomButton2(text: "Next")
            }
            
        }.offset(y:40)
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
