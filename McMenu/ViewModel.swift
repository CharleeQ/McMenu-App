//
//  ViewModel.swift
//  McMenu
//
//  Created by Кирилл Какареко on 04.05.2021.
//

import SwiftUI

class McMenuViewModel: ObservableObject {
    @Published var categories = Categories.allCases
    @Published var dishes : Array<Dish> = [
        Dish(type: .burger, name: "Тейсти Чизбургер", price: 2.50, energyCount: 1353, calories: 323, photo: "01_cheeseburger"),
        Dish(type: .burger, name: "Биг Тейсти Ролл", price: 7.30, energyCount: 2155, calories: 516, photo: "01_bigtastyroll"),
        Dish(type: .burger, name: "Тейсти Чикенбургер", price: 2.50, energyCount: 1467, calories: 351, photo: "01_chickenburger"),
        Dish(type: .burger, name: "Чикен Премьер", price: 6.00, energyCount: 2216, calories: 530, photo: "01_chickenpremier"),
        Dish(type: .burger, name: "Биг Тейсти", price: 8.80, energyCount: 3211, calories: 771, photo: "01_bigtasty"),
        Dish(type: .desert, name: "МакСанди™ шоколадный", price: 2.50, energyCount: 1244, calories: 295, photo: "02_mcsandychoco"),
        Dish(type: .desert, name: "МакСанди™ клубничный", price: 2.50, energyCount: 1025, calories: 243, photo: "02_mcsandystrawberry"),
        Dish(type: .desert, name: "МакСанди™ Дуо", price: 2.70, energyCount: 1244, calories: 295, photo: "02_mcsandyduo")
    ]
    
    func calculateCalories() -> Int {
        var sum = 0
        for item in (0..<dishes.count) {
            sum += (dishes[item].calories * dishes[item].countPositions)
        }
        return sum
    }
    func calculatePrice() -> Double {
        var sum: Double = 0
        for item in (0..<dishes.count) {
            sum += (dishes[item].price * Double(dishes[item].countPositions))
            
        }
        return sum
    }
    func calculateEnergy() -> Int {
        var sum = 0
        for item in (0..<dishes.count) {
            sum += (dishes[item].energyCount * dishes[item].countPositions)
            
        }
        return sum
    }
}
