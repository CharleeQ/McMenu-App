//
//  TwoLabelsRow.swift
//  McMenu
//
//  Created by Кирилл Какареко on 04.05.2021.
//

import SwiftUI

struct TwoLabelsRow: View {
    var title: String
    var value: String
    var body: some View {
        HStack {
            Text(title)
                .lineLimit(1)
            Spacer()
            Text(value)
                .font(.headline)
                
        }
    }
}
//
//struct TwoLabelsRow_Previews: PreviewProvider {
//    static var previews: some View {
//        TwoLabelsRow()
//    }
//}
