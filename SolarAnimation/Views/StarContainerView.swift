//
//  StarContainerView.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 25/4/25.
//

import SwiftUI

struct StarContainerView: View {
    @ObservedObject var viewModel: StarViewModel = StarViewModel()
    
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
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    @ObservedObject var viewModel: StarViewModel = StarViewModel()
    return StarContainerView(viewModel: viewModel)
        .onAppear(perform: {
            viewModel.generateStars(in: CGSize(width: 400, height: 800))
        })
}
