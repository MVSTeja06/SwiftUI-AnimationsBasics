    //
    //  GeometryReader.swift
    //  Essential-Animations
    //
    //  Created by Ajay Gupta on 10/29/21.
    //

import SwiftUI

struct GeometryReader: View {
    
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20){
            TitleText("Example")
            SubtitleText("Parts of Animation")
            BannerText("Animate Center", backColor: .blue, textColor: .white)
            
                //            Circle()
                //                .foregroundColor(.orange)
                //                .frame(width: 100, height: 100)
                //                .offset(x: 0, y: change ? 300: 0)
                //                .animation(Animation.linear)
            GeometryReader { gp in
                Path { p in
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.blue)
                        .frame(width: 100, height: 100)
                        .position(self.change
                                  ? CGPoint(x: 50, y: 50)
                                  : CGPoint(x: gp.size.width - 50, y: gp.size.height - 50))
                        .animation(.default)
                }
            }
            
            
            Button("Change"){
                self.change.toggle()
            }.padding(.bottom)
            
        }.font(.title)
    }
}

struct GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader()
    }
}
