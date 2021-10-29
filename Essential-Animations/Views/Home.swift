//
//  Home.swift
//  Essential-Animations
//
//  Created by Ajay Gupta on 10/29/21.
//

import SwiftUI

struct Home: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20){
            TitleText("Example")
            SubtitleText("Parts of Animation")
            BannerText("The button changes a variable that then changes a view's property. That property change caused a change on the screen")
            
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .offset(x: 0, y: change ? 300: 0)
                .animation(Animation.linear)
            
            Spacer()
            
            Button("Change"){
                self.change.toggle()
            }.padding(.bottom)
            
        }.font(.title)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
