//
//  FoodRow.swift
//  McMenu
//
//  Created by Кирилл Какареко on 04.05.2021.
//

import SwiftUI

struct FoodRow: View {
    @Binding var item: Dish
    
    var body: some View {
        HStack {
            Image(item.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
            VStack (alignment: .leading, spacing: 8) {
                HStack (alignment: .top) {
                    Text(item.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Spacer()
                    Button(action: {
                        item.removePosition()
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.primary)
                    }
                    
                }
                HStack {
                    VStack {
                        Text(verbatim: "\(item.calories)")
                        Text("Кал")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    VStack {
                        Text(verbatim:"\(item.energyCount)")
                        Text("кДж")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    VStack {
                        Text(verbatim: "\(item.price)")
                        Text("BYN")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
                HStack {
                    Text("Количество")
                    Spacer()
                    Text("\(item.countPositions)")
                        .font(.headline)
                }
            }
            .padding()
        }
        
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(item: .constant(Dish(type: .boxes, name: "Название", price: 213, energyCount: 21, calories: 23, photo: "01_cheeseburger", countPositions: 0)))
            .previewLayout(.sizeThatFits)
            
    }
}
