//
//  Page5.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct TitleList: Identifiable{
    let id = UUID()
    var name: String
    var weight: String
}

struct TextList: Identifiable{
    let id = UUID()
    var name: String
    var milliliter: [TitleList]
}



struct ListHistory: View {
    @State private var myList: [TextList] = [
        TextList(name: "Today", milliliter:[TitleList(name: "250", weight: "ml" ), TitleList(name: "200", weight: "ml"), TitleList(name: "50", weight: "ml" ), TitleList(name: "300", weight: "ml" )]),
        TextList(name: "23.11.21", milliliter: [TitleList(name: "250", weight: "ml" ), TitleList(name: "200", weight: "ml"), TitleList(name: "50", weight: "ml" ), TitleList(name: "300", weight: "ml" ),])]
    var body: some View {
        List{
            ForEach(myList){ oneCountry in
                Section(oneCountry.name){
                    ForEach(oneCountry.milliliter){oneAnimal in
                        Text("\(oneAnimal.name) \(oneAnimal.weight)")
                            
                    }
                }
                
            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct ListSetting: View{
    var body: some View{
        List{
            ListBlock(text:"Daily Intake Level", text1: "2400 ML")
            ListBlock(text:"Your goal", text1: "")
            ListBlock(text:"Reminder", text1: "")
        }
    }
}

struct ListBlock:View{
    var text: String
    var text1: String
    var body: some View{
        VStack{
            HStack{
                PlainText(text: text, fontText: 17)
                Spacer()
                HStack{
                    PlainText(text: text1, fontText: 17).foregroundColor(.black.opacity(0.2))
                    Image(systemName: "chevron.right").foregroundColor(.black.opacity(0.2))
                }
            }
        }
    }
}
struct ListPage_Previews: PreviewProvider {
    static var previews: some View {
        ListSetting()
    }
}
