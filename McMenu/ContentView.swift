//
//  ContentView.swift
//  McMenu
//
//  Created by Кирилл Какареко on 04.05.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var menu: McMenuViewModel
    @State private var isSelectedSegment = Categories.burger.type
    @State private var buttonPresented = false
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    CustomSegmentedControl(titles: menu.categories, selectedItem: $isSelectedSegment)
                        .padding(.top)
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 8) {
                        ForEach(0..<menu.dishes.count) { item in
                            if menu.dishes[item].type.type == isSelectedSegment {
                                Card(item: $menu.dishes[item])
                            }
                        }
                    }
                    .padding()
                    .padding(.bottom, 80)
                }
                VStack {
                    Spacer()
                    BigYellowButton(title: "Перейти к заказу", description: "Цена, состав, энергетическая ценность", image: "arrow.right", isPresented: $buttonPresented)
                        .padding()
                        .sheet(isPresented: $buttonPresented, content: {
                            OrderView()
                        })
                }
            }
            
            .navigationTitle("МакМеню")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
