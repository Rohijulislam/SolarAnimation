//
//  SolarSystemView.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 26/4/25.
//

import SwiftUI

struct SolarSystemView: View {
    @StateObject private  var viewModel: SolarSystemViewModel = SolarSystemViewModel()
    private var orbitTilt: Double = 60
    
    var body: some View {
        GeometryReader { geo in
            let safeRadius = viewModel.maxRadius(from: geo)
            let center = viewModel.center(from: geo)
            
            ZStack {
                // Sun
                SunView()
                    .position(center)
                
                // Planets and their orbits
                ZStack {
                    ForEach(viewModel.visiblePlanets(safeRadius: safeRadius)) { planet in
                        PlanetOrbitView(center: center, planet: planet)
                    }
                }
            }
            .rotation3DEffect(.degrees(orbitTilt), axis: (x: 1, y: 0, z: 0))
        }
    }
}
