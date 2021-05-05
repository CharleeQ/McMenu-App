//
//  Card.swift
//  McMenu
//
//  Created by Кирилл Какареко on 04.05.2021.
//

import SwiftUI

struct Card: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var item: Dish
    
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            Image(item.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(item.name)
                .font(.headline)
                .lineLimit(1)
            Text(verbatim: "\(item.price) BYN")
            HStack {
                Spacer(minLength: 0)
                Counter(item: $item)
                Spacer(minLength: 0)
            }
        }
        .padding()
        .background(colorScheme == .dark ? Color.deepBrown : Color.shineGray)
        .cornerRadius(16)
        .foregroundColor(.primary)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(item: .constant(Dish(type: .burger, name: "Name", price: 0.00, energyCount: 1111, calories: 222, photo: "01_cheeseburger", countPositions: 0)))
            .previewLayout(.sizeThatFits)
    }
}
