//
//  ChexBoxPage2.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct ChexBoxPage2: View {
    var body: some View {
        ZStack{
            Frame()
            VStack{
                Grid{
                    GridRow{
                        CustomButton3(text: "15 minutes")
                        CustomButton3(text: "30 minutes")
                    }
                    GridRow{
                        CustomButton3(text: "45 minutes")
                        CustomButton3(text: "1 hours")
                    }
                    GridRow{
                        CustomButton33(text: "1,5 hours")
                        CustomButton3(text: "2 hours")
                    }
                    GridRow{
                        CustomButton3(text: "3 hours")
                        CustomButton3(text: "4 hours")
                    }
                }
            }
        }
    }
}

struct ChexBoxPage2_Previews: PreviewProvider {
    static var previews: some View {
        ChexBoxPage2()
    }
}
