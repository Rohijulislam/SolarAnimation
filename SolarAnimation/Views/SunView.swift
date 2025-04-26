//
//  SunView.swift
//  SolarAnimation
//
//  Created by ROHEJUL ISLAM on 25/4/25.
//

import SwiftUI

struct SunView: View {
    var body: some View {
        Circle()
            .fill(RadialGradient(
                gradient: Gradient(colors: [.yellow, .orange]),
                center: .center,
                startRadius: 0,
                endRadius: 50
            ))
            .frame(width: 50, height: 50)
            .shadow(color: .yellow, radius: 40)
    }
}

#Preview {
    SunView()
}
