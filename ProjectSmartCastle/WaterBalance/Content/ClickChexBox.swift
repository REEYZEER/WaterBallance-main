//
//  ClickChexBox.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct ClickChexBox: View {
    var body: some View{
        ZStack{
            Frame()
            VStack{
                ZStack{
                    frameChexBox()
                    HStack(spacing:85){
                        PlainText(text: "Goal Number One", fontText: 16.0)
                        CircleChexbox()
                    }
                }
                ZStack{
                    frameChexBox()
                    HStack(spacing:85){
                        PlainText(text: "Goal Number One", fontText: 16.0)
                        CircleChexbox2()
                    }
                }
                ZStack{
                    frameChexBox()
                    HStack(spacing:85){
                        PlainText(text: "Goal Number One", fontText: 16.0)
                        CircleChexbox2()
                    }
                }
                ZStack{
                    frameChexBox()
                    HStack(spacing:85){
                        PlainText(text: "Goal Number One", fontText: 16.0)
                        CircleChexbox2()
                    }
                }
                
                
            }
        }
    }
}

struct ClickChexBox_Previews: PreviewProvider {
    static var previews: some View {
        ClickChexBox()
    }
}
