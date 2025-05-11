//
//  WaterBalanceMain.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct WaterBalanceMain: View {
    var body: some View {
        TabView{
            MainPage()
            SettingPage()
            HistoryPage()

        }
    }
}

struct WaterBalanceMain_Previews: PreviewProvider {
    static var previews: some View {
        WaterBalanceMain()
    }
}
