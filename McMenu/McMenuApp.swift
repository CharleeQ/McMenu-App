//
//  McMenuApp.swift
//  McMenu
//
//  Created by Кирилл Какареко on 04.05.2021.
//

import SwiftUI

@main
struct McMenuApp: App {
    var env = McMenuViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(env)
        }
    }
}
