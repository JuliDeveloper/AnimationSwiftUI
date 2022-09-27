//
//  CustomSlider.swift
//  AnimationSwiftUI
//
//  Created by Julia Romanenko on 27.09.2022.
//

import SwiftUI

struct CustomSlider: View {
    
    @State var value = 0.3
    
    var body: some View {
        HStack {
            Text("0")
                .foregroundColor(.white)
            Slider(value: $value, in: 0.1...1.0)
                .tint(Color(red: 241/255, green: 92/255, blue: 70/255, opacity: value))
            Text("10")
                .foregroundColor(.white)
        }
    }
}

struct CustomSlider_Previews: PreviewProvider {
    static var previews: some View {
        CustomSlider()
    }
}
