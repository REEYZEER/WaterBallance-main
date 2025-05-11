//
//  Frame.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct Frame: View {
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 358, height: 330)
                .cornerRadius(16)
                .foregroundColor(Color(red: 0.833, green: 0.882, blue: 0.972))
        }
    }
}

struct Frame2: View {
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 358, height: 108)
                .cornerRadius(16)
                .foregroundColor(Color(red: 0.833, green: 0.882, blue: 0.972))
        }
    }
}
struct Frame22: View {
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 250, height: 60)
                .cornerRadius(16)
                .foregroundColor(Color.white)
        }
    }
}

struct frameChexBox: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 16)
            .frame(width: 320, height: 60)
            .foregroundColor(Color.white)
    }
}

struct CircleChexbox: View{
    var body: some View{
        ZStack{
            Circle()
                .stroke(Color(red: 0.094, green: 0.408, blue: 0.992), lineWidth: 3)
                .frame(width: 20, height: 20)
            Circle()
                .frame(width: 12, height: 12)
                .foregroundColor(Color(red: 0.094, green: 0.408, blue: 0.992))
        }
            
    }
}

struct CircleChexbox2: View{
    var body: some View{
        ZStack{
            Circle()
                .stroke(Color(red: 0.094, green: 0.408, blue: 0.992), lineWidth: 3)
                .frame(width: 20, height: 20)

        }
            
    }
}

struct Circlepage4:View{
    var body: some View{
            ZStack{
                Circle()
                    .stroke(Color.white, lineWidth: 4)
                    .frame(width: 180, height: 180)
                Circle()
                    .frame(width: 180, height: 180)
                    .foregroundColor(Color(red: 0.831, green: 0.882, blue: 0.973))
                WaterWaveView1().offset(y:23)
        }
    }
}
struct Circlepage44:View{
    var body: some View{
            ZStack{
                Circle()
                    .stroke(Color.white, lineWidth: 4)
                    .frame(width: 180, height: 180)
                Circle()
                    .frame(width: 180, height: 180)
                    .foregroundColor(Color(red: 0.831, green: 0.882, blue: 0.973))
                WaterWaveView().offset(y:23)
        }
    }
}
struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        Circlepage4()
    }
}
