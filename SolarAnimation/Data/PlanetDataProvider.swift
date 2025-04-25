//
//  PlanetDataProvider.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 25/4/25.
//

import Foundation

protocol PlanetDataProviderProtocol {
    func providePlanets() -> [PlanetModel]
}

struct PlanetDataProvider: PlanetDataProviderProtocol {
    func providePlanets() -> [PlanetModel] {
        return [
            PlanetModel(
                name: "Mercury",
                orbitRadius: 40,
                size: 14,
                orbitDuration: 4,
                color: .green
            ),
            PlanetModel(
                name: "Venus",
                orbitRadius: 75,
                size: 21,
                orbitDuration: 6,
                color: .purple
            ),
            PlanetModel(
                name: "Earth",
                orbitRadius: 110,
                size: 23,
                orbitDuration: 10,
                color: .blue
            ),
            PlanetModel(
                name: "Saturn",
                orbitRadius: 145,
                size: 26,
                orbitDuration: 13,
                color: .orange,
                hasRings: true,
                ringWidth: 2.5,
                ringTilt: -30
            ),
            PlanetModel(
                name: "Neptune",
                orbitRadius: 180,
                size: 18,
                orbitDuration: 17,
                color: .gray
            )
        ]
    }
}

protocol StarProviderProtocol {
    func generateStars(in size: CGSize, count: Int) -> [StarModel]
}

struct StarProvider: StarProviderProtocol {
    /// Generates an array of stars with random properties.
    func generateStars(in size: CGSize, count: Int) -> [StarModel] {
        var stars: [StarModel] = []
        
        for _ in 0..<count {
            let star = StarModel(
                size: CGFloat.random(in: 2.5...6.0),
                brightness: Double.random(in: 0.3...0.9),
                position: CGPoint(
                    x: CGFloat.random(in: 0...size.width),
                    y: CGFloat.random(in: 0...size.height)
                ),
                blurAmount: CGFloat.random(in: 0.2...2.0)
            )
            stars.append(star)
        }
        
        return stars
    }
}

