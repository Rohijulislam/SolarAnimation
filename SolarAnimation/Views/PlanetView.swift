//
//  PlanetView.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 26/4/25.
//

import SwiftUI

struct PlanetView: View {
    let planet: PlanetModel
    
    var body: some View {
        ZStack {
            // Rings if applicable
            if planet.hasRingSupport() {
                Ellipse()
                    .stroke(Color.white.opacity(0.3), lineWidth: 3)
                    .frame(width: planet.size * (planet.ringWidth ?? 0.0), height: planet.size * 1.2)
                    .rotationEffect(.degrees(planet.ringTilt ?? 0))
                    .blur(radius: 0.5)
            }
            
            // Planet body with glow
            Circle()
                .fill(planet.color)
                .frame(width: planet.size, height: planet.size)
                .shadow(color: planet.color.opacity(0.7), radius: 6)
        }
    }
    
}
