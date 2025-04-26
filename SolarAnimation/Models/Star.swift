//
//  Star.swift
//  SolarAnimation
//
// Created by ROHEJUL ISLAM on 25/4/25.
//

import Foundation

struct StarModel: AstronomicalObject {
    let name: String
    let size: CGFloat
    let brightness: Double
    let position: CGPoint
    let blurAmount: CGFloat
    
    init(size: CGFloat, brightness: Double, position: CGPoint, blurAmount: CGFloat) {
        self.size = size
        self.brightness = brightness
        self.position = position
        self.blurAmount = blurAmount
        name = "Star"
    }
}
