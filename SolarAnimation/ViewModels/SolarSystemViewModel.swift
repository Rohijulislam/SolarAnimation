//
//  SolarSystemViewModel.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 26/4/25.
//

import SwiftUI

// Protocol for View Models to make them testable
protocol SolarSystemViewModelProtocol: ObservableObject {
    var planets: [PlanetModel] { get }
    var sun: any AstronomicalObject { get }
    func center(from proxy: GeometryProxy) -> CGPoint
}

class SolarSystemViewModel: SolarSystemViewModelProtocol {
    @Published var planets: [PlanetModel]
    @Published var sun: any AstronomicalObject
    
    private let animationDuration: Double = 100
    
    init(planetDataProvider: PlanetDataProviderProtocol = PlanetDataProvider()) {
        self.planets = planetDataProvider.providePlanets()
        self.sun = DefaultAstronomicalObject(name: "Sun")
    }
    
    func center(from proxy: GeometryProxy) -> CGPoint {
        return CGPoint(x: proxy.size.width / 2.0, y: proxy.size.height / 2.0)
    }
    
    func maxRadius(from proxy: GeometryProxy) -> CGFloat {
        return min(proxy.size.width, proxy.size.height) / 2 - 10.0 // extracting some safe offset
    }
}
