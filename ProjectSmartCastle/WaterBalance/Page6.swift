//
//  Page6.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct SettingPage: View {
    var body: some View {
            VStack{
                Title(text: "EDIT", FontSize: 17)
                ListSetting().scrollContentBackground(.hidden)
            }
            .tabItem {
                Label("Setting", systemImage:"slider.horizontal.3")
            }
    }
}

struct Page6_Previews: PreviewProvider {
    static var previews: some View {
        SettingPage()
    }
}
