//
//  CustomSegmentedControl.swift
//  McMenu
//
//  Created by Кирилл Какареко on 04.05.2021.
//

import SwiftUI

struct CustomSegmentedControl: View {
    @Environment(\.colorScheme) var colorScheme
    
    var titles: [Categories]
    
    @Binding var selectedItem: String
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<titles.count) { item in
                    Button (action: {
                        selectedItem = titles[item].type
                    }) {
                        Text(titles[item].type)
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding()
                            .background(selectedItem == titles[item].type ? Color.brand : Color.clear)
                            .cornerRadius(16)
                            .foregroundColor(selectedItem == titles[item].type ? .black : .primary)
                    }
                }
            }
            .background(colorScheme == .dark ? Color.deepBrown : Color.shineGray)
            .cornerRadius(16)
            .padding(.horizontal)
        }
    }
}
//
//struct CustomSegmentedControl_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomSegmentedControl(titles: Categories(), selectedItem: .constant("Бургеры и роллы"))
//            .preferredColorScheme(.dark)
//            .previewLayout(.sizeThatFits)
//    }
//}
