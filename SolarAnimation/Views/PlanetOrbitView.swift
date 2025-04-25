//
//  PlanetOrbitView.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 26/4/25.
//
import SwiftUI

struct PlanetOrbitView: View {
    var center: CGPoint
    var planet: PlanetModel
    
    @State private var angle: Double = 0.0
    
    var body: some View {
        ZStack {
            // Orbit path
            Circle()
                .stroke(Color.white.opacity(0.20), lineWidth: 2.5)
                .frame(width: planet.orbitRadius * 2, height: planet.orbitRadius * 2)
                .position(center)
            
            // Planet with potential rings
            PlanetView(planet: planet)
                .offset(x: planet.orbitRadius)
                .rotationEffect(.degrees(angle))
                .position(center)
        }
        .onAppear {
            withAnimation(Animation.linear(duration: planet.orbitDuration).repeatForever(autoreverses: false)) {
                angle = 360
            }
        }
    }
}
