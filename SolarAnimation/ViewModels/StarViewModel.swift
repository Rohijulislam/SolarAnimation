//
//  StarViewModel.swift
//  SolarAnimation
//
// Created by ROHEJUL ISLAM on 25/4/25.
//

import Foundation

class StarViewModel: ObservableObject {
    @Published var stars: [StarModel] = []
    private let starCount: Int
    private let starFieldProvider: StarProvider
    
    init(starCount: Int = 400, starFieldProvider: StarProvider = StarProvider()) {
        self.starCount = starCount
        self.starFieldProvider = starFieldProvider
    }
    
    func generateStars(in size: CGSize) {
        stars = starFieldProvider.generateStars(in: size, count: starCount)
    }
}
