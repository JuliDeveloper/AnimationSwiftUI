//
//  FireView.swift
//  AnimationSwiftUI
//
//  Created by Julia Romanenko on 28.09.2022.
//

import SwiftUI

struct FireView: View {
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
    }
}

struct FireView_Previews: PreviewProvider {
    static var previews: some View {
        FireView()
            .frame(width: 200, height: 200)
    }
}
