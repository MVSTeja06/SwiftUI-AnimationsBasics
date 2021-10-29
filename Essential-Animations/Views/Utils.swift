//
//  Utils.swift
//  Essential-Animations
//
//  Created by Ajay Gupta on 10/29/21.
//

import Foundation
import SwiftUI

struct TitleText: View {
    var title = ""
    var body: some View {
        Text(title)
            .font(.largeTitle)
    }
    init(_ title: String) {
        self.title = title
    }
}


struct SubtitleText: View {
    var subtitle = ""
    var body: some View {
        Text(subtitle)
            .font(.title)
            .foregroundColor(.gray)
    }
    init(_ subtitle: String) {
        self.subtitle = subtitle
    }
}


struct BannerText: View {
    var text: String
    var backColor: Color
    var textColor: Color
    
    var body: some View {
        Text(text)
            .font(.title)
            .foregroundColor(textColor)
            .frame(maxWidth: .infinity)
            .padding()
            .background(backColor)
            .foregroundColor(textColor)
    }
    init(_ text: String, backColor: Color = Color.orange, textColor: Color = Color.primary) {
        self.text = text
        self.backColor = backColor
        self.textColor = textColor
    }
}
