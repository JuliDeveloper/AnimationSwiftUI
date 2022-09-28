//
//  WoodView.swift
//  AnimationSwiftUI
//
//  Created by Julia Romanenko on 28.09.2022.
//

import SwiftUI

struct WoodView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let zero: CGFloat = 0
            
            Path { path in
                path.move(to: CGPoint(x: 20, y: zero))
                path.addLine(to: CGPoint(x: width, y: height - 30))
                path.addLine(to: CGPoint(x: width - 20, y: height))
                path.addLine(to: CGPoint(x: zero, y: 30))
            }
            
            Path { path in
                path.move(to: CGPoint(x: width - 20, y: zero))
                path.addLine(to: CGPoint(x: width, y: 30))
                path.addLine(to: CGPoint(x: 20, y: height))
                path.addLine(to: CGPoint(x: zero, y: height - 30))
            }
        }
        .frame(width: 170, height: 100)
        .foregroundColor(.customBrown)
    }
}

struct WoodView_Previews: PreviewProvider {
    static var previews: some View {
        WoodView()
    }
}
