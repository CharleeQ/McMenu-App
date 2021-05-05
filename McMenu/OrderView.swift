//
//  OrderView.swift
//  McMenu
//
//  Created by Кирилл Какареко on 04.05.2021.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var menu: McMenuViewModel
    
    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Общее")) {
                    TwoLabelsRow(title: "Стоимость заказа", value: "\(menu.calculatePrice()) BYN")
                    TwoLabelsRow(title: "Энергетическая ценность", value: "\(menu.calculateEnergy()) кДж")
                    TwoLabelsRow(title: "Калорийность", value: "\(menu.calculateCalories()) Кал")
                }
                Section (header: Text("Позиции")) {
                    ForEach (0..<menu.dishes.count) { item in
                        if menu.dishes[item].countPositions > 0 {
                            FoodRow(item: $menu.dishes[item])
                        }
                    }
                }
            }
            .navigationTitle("Заказ")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
