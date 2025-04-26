//
//  StarContainerView.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 25/4/25.
//

import SwiftUI

struct StarContainerView: View {
    @StateObject private var viewModel: StarViewModel = StarViewModel()
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.black
                
                ForEach(viewModel.stars) { star in
                    StarView(star: star)
                }
            }
            .onAppear {
                viewModel.generateStars(in: geo.size)
            }.onChange(of: geo.size) { newSize in
                viewModel.generateStars(in: newSize)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    StarContainerView()
}
