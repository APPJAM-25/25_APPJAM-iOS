//
//  Font.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/20/24.
//

import SwiftUI

extension Font {
    static func suit(
        _ size: CGFloat = 16,
        weight: SuitWeight = .regular
    ) -> Font {
        let fontName = "SUIT-\(weight.rawValue)"
        return Font.custom(fontName, size: size)
    }
    
    static func suitdUIFont(
        _ size: CGFloat = 16,
        weight: SuitWeight = .regular
    ) -> UIFont {
        let fontName = "SUIT-\(weight.rawValue)"
        if let fontURL = Bundle.main.url(forResource: fontName, withExtension: "otf"),
           let fontData = try? Data(contentsOf: fontURL),
           let provider = CGDataProvider(data: fontData as CFData),
           let cgFont = CGFont(provider) {
            var error: Unmanaged<CFError>?
            if CTFontManagerRegisterGraphicsFont(cgFont, &error) {
                let fontDescriptor = CTFontDescriptorCreateWithAttributes([
                    kCTFontNameAttribute: fontName as CFString,
                    kCTFontSizeAttribute: size
                ] as CFDictionary)
                return UIFont(descriptor: fontDescriptor, size: size)
            } else {
                if let error = error?.takeRetainedValue() {
                    print("Failed to register font: \(error)")
                } else {
                    print("Failed to register font with an unknown error")
                }
            }
        } else {
            print("Failed to load font data")
        }
        fatalError("Failed to load font named \(fontName)")
    }
}

enum SuitWeight: String {
    case thin = "Thin"
    case semibold = "SemiBold"
    case regular = "Regular"
    case medium = "Medium"
    case light = "Light"
    case extraBold = "ExtraBold"
    case heavey = "Heavey"
    case extraLight = "ExtraLight"
    case bold = "Bold"
}
