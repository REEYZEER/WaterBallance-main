//
//  Page5.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct HistoryPage: View {
    var body: some View {
            VStack{
                Title(text: "HISTORY", FontSize: 17)
                ListHistory().scrollContentBackground(.hidden)
            }
            .tabItem {
                Label("History", systemImage:"doc")
            }
    }
}
struct HistoryPage_Previews: PreviewProvider {
    static var previews: some View {
        HistoryPage()
    }
}
