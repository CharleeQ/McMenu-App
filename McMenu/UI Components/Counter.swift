//
//  Counter.swift
//  McMenu
//
//  Created by Кирилл Какареко on 05.05.2021.
//

import SwiftUI

struct Counter: View {
    @Binding var item: Dish
    
    var body: some View {
        HStack (spacing: 4) {
            Button(action: {
                item.deletePosition()
            }) {
                Image(systemName: "minus.circle.fill")
            }
            .padding(4)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            Text("\(item.countPositions)")
                .font(.title)
            Button(action: {
                item.addPosition()
            }) {
                Image(systemName: "plus.circle.fill")
            }
            .padding(4)
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(Circle())
        }
    }
}

struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        Counter(item: .constant(Dish(type: .burger, name: "Name", price: 0.00, energyCount: 1111, calories: 222, photo: "01_cheeseburger", countPositions: 0)))
    }
}
