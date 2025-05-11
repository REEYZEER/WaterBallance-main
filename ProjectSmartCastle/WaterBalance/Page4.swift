//
//  Page4.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct MainPage: View {
    var body: some View{
//        TabView{
            StylePage5
            .tabItem {
                Label("Main", systemImage: "house")
                }
//        }
    }
// STYLE FIGMA PAGE 4
    private var StylePage4: some View{
        VStack(spacing:50){
            Title(text:"WATER BALANCE",FontSize: 17)
                BlockGradientFrame()
                VStack(spacing:125){
                    Title2(text: "Add your first drink for today").multilineTextAlignment(.center)
                    CustomButton2(text: "Save")
                }
            }
    }
// STYLE FIGMA PAGE 5
    private var StylePage5: some View{
        VStack(spacing:100){
                Title(text:"WATER BALANCE",FontSize: 17)
                BlockGradientFrame2()
                VStack(spacing:125){
                    Title2(text: "Great job!").multilineTextAlignment(.center)
                    CustomButton2(text: "Save")
                }
            }
    }
}


struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
