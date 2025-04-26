# SolarAnimation
[![Swift](https://img.shields.io/badge/Swift-5.0%2B-orange.svg)](https://swift.org)
[![Platforms](https://img.shields.io/badge/platforms-iOS%20|%20macOS%20|%20tvOS-lightgrey.svg)](https://developer.apple.com/swift)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/Rohijulislam/SolarAnimation/blob/main/LICENSE)

An animated solar system visualization built with SwiftUI following MVVM architecture & clean code principles.

---

## ✨ Features
- Dynamicaaly generated background stars with twinkling effect
- Tilted planet orbits with custom animations

## 📦 Installation

### Requirements
- iOS 15.0+
- Xcode 14.0+
- Swift 5.0+

### Setup
- Clone the repository:
    ```swift
    https://github.com/Rohijulislam/SolarAnimation.git
     ```
- Open SolarAnimation.xcodeproj in Xcode
- Build and run the project

## Customization
To customize the solar system, modify the PlanetDataProvider class:
```swift 
func providePlanets() -> [PlanetModel] {
    return [
        PlanetModel(
            name: "Your Planet",
            orbitRadius: 100,
            size: 25,
            orbitDuration: 8,
            color: .blue
        ),
        // Add more planets...
    ]
}
   ```
