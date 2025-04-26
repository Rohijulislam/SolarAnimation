//
//  StarView.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 25/4/25.
//

import SwiftUI

struct StarView: View {
    let star: StarModel
    @State private var opacity: Double
    
    init(star: StarModel) {
        self.star = star
        self._opacity = State(initialValue: star.brightness)
    }
    
    var body: some View {
        Circle()
            .fill(Color.white)
            .frame(width: star.size, height: star.size)
            .blur(radius: star.blurAmount)
            .shadow(color: Color.white.opacity(0.4), radius: 2)
            .opacity(opacity)
            .position(star.position)
    }
}
