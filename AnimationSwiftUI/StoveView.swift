//
//  StoveView.swift
//  AnimationSwiftUI
//
//  Created by Julia Romanenko on 28.09.2022.
//

import SwiftUI

struct StoveView: View {
    var body: some View {
        GeometryReader { geometry in
            
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let nearLine = size * 0.2
            let middle = size / 2
            let zero: CGFloat = 0
            
            Path { path in
                path.move(to: CGPoint(x: zero,
                                      y: middle))
                path.addLine(to: CGPoint(x: nearLine,
                                         y: height))
                path.addLine(to: CGPoint(x: width - nearLine,
                                         y: height))
                path.addLine(to: CGPoint(x: width,
                                         y: middle))
                path.addLine(to: CGPoint(x: width - nearLine,
                                         y: zero))
                path.addLine(to: CGPoint(x: width - (nearLine * 3),
                                         y: zero))
                path.addLine(to: CGPoint(x: width - (nearLine * 2),
                                         y: middle))
                path.addLine(to: CGPoint(x: width - (nearLine * 4),
                                         y: middle))
                path.addLine(to: CGPoint(x: width - (nearLine * 4),
                                         y: middle - nearLine))
                path.addLine(to: CGPoint(x: width - (nearLine * 6),
                                         y: middle - nearLine))
                path.addLine(to: CGPoint(x: width - (nearLine * 6),
                                         y: middle))
                path.addLine(to: CGPoint(x: nearLine * 2,
                                         y: middle))
                path.addLine(to: CGPoint(x: nearLine * 3,
                                         y: zero))
                path.addLine(to: CGPoint(x: nearLine,
                                         y: zero))
            }
        }
        .frame(width: 200, height: 100)
        .foregroundColor(.customLightBlue)
    }
}

struct StoveView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StoveView()
        }
    }
}
