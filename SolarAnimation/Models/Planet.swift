//
//  Planet.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 4/25/25.
//

import SwiftUI

struct PlanetModel: AstronomicalObject {
    let name: String
    let orbitRadius: CGFloat
    let size: CGFloat
    let orbitDuration: Double
    let color: Color
    let hasRings: Bool
    let ringWidth: CGFloat?
    let ringTilt: Double?
    
    init(name: String,
         orbitRadius: CGFloat,
         size: CGFloat,
         orbitDuration: Double,
         color: Color,
         hasRings: Bool = false,
         ringWidth: CGFloat? = nil,
         ringTilt: Double? = nil
    ) {
        self.orbitRadius = orbitRadius
        self.size = size
        self.orbitDuration = orbitDuration
        self.color = color
        self.hasRings = hasRings
        self.ringWidth = ringWidth
        self.ringTilt = ringTilt
        self.name = name
    }
}
