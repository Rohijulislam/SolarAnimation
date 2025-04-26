//
//  ContentView.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 25/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .center) {
            StarContainerView()
            SolarSystemView()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
