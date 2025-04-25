//
//  AstronomicalObject.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 25/4/25.
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

struct DefaultAstronomicalObject : AstronomicalObject {
    let name: String
    init(name: String) {
        self.name = name
    }
}
