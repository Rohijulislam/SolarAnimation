//
//  AstronomicalObject.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 4/25/25.
//

import Foundation

// Base model for astronomical objects
protocol AstronomicalObject: Identifiable {
    var id: UUID { get }
    var name: String { get }
}

extension AstronomicalObject {
    var id: UUID { UUID() }
}
