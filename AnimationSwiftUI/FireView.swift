//
//  FireView.swift
//  AnimationSwiftUI
//
//  Created by Julia Romanenko on 28.09.2022.
//

import SwiftUI

struct FireView: View {
    @Binding var value: Double
    
    let color: Color
    let radius: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let zero: CGFloat = 0
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: zero))
                path.addQuadCurve(to: CGPoint(x: middle, y: height), control: CGPoint(x: width, y: height))
                path.addQuadCurve(to: CGPoint(x: middle, y: zero), control: CGPoint(x: zero, y: height))
            }
        }
        .foregroundColor(color)
        .scaleEffect(value * 2)
        .animation(.linear.repeatForever(autoreverses: true), value: value)
        .shadow(color: color, radius: radius, x: 0, y: 0)
    }
}

struct FireView_Previews: PreviewProvider {
    static var previews: some View {
        FireView(value: .constant(0.3), color: .red, radius: 50)
            .frame(width: 200, height: 200)
    }
}
