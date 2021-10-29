//
//  LeftCornerRightCorner.swift
//  Essential-Animations
//
//  Created by Ajay Gupta on 10/29/21.
//

import SwiftUI

struct LeftCornerRightCorner: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20){
            
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .offset(x: change ? 150: -150, y: change ? 700: 0)
                .animation(Animation.easeInOut)
            
            Spacer()
            
            Button("Change"){
                self.change.toggle()
            }.padding(.bottom)
            
        }.font(.title)
    }
}

struct LeftCornerRightCorner_Previews: PreviewProvider {
    static var previews: some View {
        LeftCornerRightCorner()
    }
}
