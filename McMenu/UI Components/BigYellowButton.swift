//
//  BigYellowButton.swift
//  McMenu
//
//  Created by Кирилл Какареко on 04.05.2021.
//

import SwiftUI

struct BigYellowButton: View {
    var title: String
    var description: String
    var image: String
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Button(action: {
            isPresented.toggle()
        }) {
            HStack {
                VStack (alignment: .leading){
                    Text(title)
                        .font(.headline)
                        .lineLimit(1)
                    Text(description)
                        .font(.caption2)
                        .foregroundColor(.black)
                        .opacity(0.8)
                        .lineLimit(1)
                }
                Spacer()
                Image(systemName: image)
            }
            .foregroundColor(.black)
            .padding()
        }
        .background(Color.brand)
        .cornerRadius(16)
    }
}

struct BigYellowButton_Previews: PreviewProvider {
    static var previews: some View {
        BigYellowButton(title: "Перейти к заказу", description: "Цена, состав, энергетическая ценность", image: "arrow.right", isPresented: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
