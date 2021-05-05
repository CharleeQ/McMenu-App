//
//  Models.swift
//  McMenu
//
//  Created by Кирилл Какареко on 04.05.2021.
//

import Foundation

enum Categories: CaseIterable {
    case burger
    case desert
    case frie
    case drink
    case hotDrink
    case sause
    case boxes
    
    var type: String {
        switch self {
        case .burger: return "Бургеры и роллы"
        case .desert: return "Десерты"
        case .frie: return "Картошка"
        case .drink: return "Напитки"
        case .hotDrink: return "Чай и кофе"
        case .sause: return "Соусы"
        case .boxes: return "Боксы"
        }
    }
}

struct Dish {
    var type: Categories
    var name: String
    var price: Double
    var energyCount: Int
    var calories: Int
    var photo: String
    var countPositions: Int = 0
    
    mutating func addPosition() {
        self.countPositions += 1
    }
    
    mutating func deletePosition() {
        if self.countPositions > 0 {
            self.countPositions -= 1
        }
    }
    
    mutating func removePosition() {
        self.countPositions = 0
    }
}
