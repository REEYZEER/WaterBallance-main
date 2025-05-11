//
//  CustomButton.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct CustomButton: View {
        let text: String
        var action: () -> Void = {}
        
        var body: some View{
            
            Button(action : action){
                ZStack{

                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.white)
                        .frame(width: 320, height: 60)
                    Text(text)
                        .foregroundColor(.black)
                }
            }

        }
}

struct CustomButton2: View {
        let text: String
        var action: () -> Void = {}
        
        var body: some View{
            
            Button(action : action){
                ZStack{

                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.blue)
                        .frame(width: 358, height: 60)
                    Text(text)
                        .foregroundColor(.white)
                }
            }

        }
}

struct CustomButton3: View {
        let text: String
        var action: () -> Void = {}
        
        var body: some View{
            
            Button(action : action){
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.white)
                        .frame(width: 150, height: 60)
                    Text(text)
                        .foregroundColor(Color.black)

                }
            }

        }
}

struct CustomButton33: View {
        let text: String
        var action: () -> Void = {}
        
        var body: some View{
            
            Button(action : action){
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color(red: 0.094, green: 0.408, blue: 0.992), lineWidth:4)
                        .frame(width: 150, height: 60)
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.white)
                        .frame(width: 150, height: 60)
                    Text(text)
                        .foregroundColor(Color(red: 0.094, green: 0.408, blue: 0.992))

                }
            }

        }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton3(text: "Save")
    }
}

