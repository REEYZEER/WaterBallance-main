//
//  GradientFrame.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct GradientFrame: View {
    var body: some View {
            ZStack{
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(red: 0.833, green: 0.882, blue: 0.972), .white]), startPoint: .top, endPoint: .bottom)
                        )
                    .frame(width: 358, height: 332)
                    .cornerRadius(16)
                    
            }
    }
}

struct BlockGradientFrame:View{
    var body: some View{
        VStack{
            ZStack{
                GradientFrame()
                VStack(spacing:68){
                    ZStack{
                        Circlepage4()
                        VStack(spacing:6){
                            PlainText(text: "0%", fontText: 36.0)
                            PlainText(text: "0 out of 2,4 L", fontText: 16.0)
                        }
                    }
                    PlainText(text: "Monday, 25th of November", fontText: 17.0)
                }
            }
        }
    }
}

struct BlockGradientFrame2:View{
    var body: some View{
        VStack{
            ZStack{
                GradientFrame()
                VStack(spacing:68){
                    ZStack{
                        Circlepage44()

                        VStack(spacing:6){
                            PlainText(text: "34%", fontText: 36.0)
                            PlainText(text: "0,8 out of 2,4 LL", fontText: 16.0).foregroundColor(.white)
                        }
                    }
                    PlainText(text: "Monday, 25th of November", fontText: 17.0)
                }
            }
        }
    }
}

struct GradientFrame_Previews: PreviewProvider {
    static var previews: some View {
        BlockGradientFrame2()
    }
}
