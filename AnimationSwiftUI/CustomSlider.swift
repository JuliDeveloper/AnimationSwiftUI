//
//  CustomSlider.swift
//  AnimationSwiftUI
//
//  Created by Julia Romanenko on 27.09.2022.
//

import SwiftUI

struct CustomSlider: View {
    
    @Binding var value: Double
    @Binding var isHidden: Bool
    
    var body: some View {
        HStack {
            Text("1")
                .foregroundColor(.white)
            Slider(value: $value, in: 0.1...1.0)
                .tint(.customRed.opacity(value))
                .onChange(of: isHidden) { newValue in
                    if newValue == false {
                        value = 0.1
                    }
                }
            Text("10")
                .foregroundColor(.white)
        }
    }
}

struct CustomSlider_Previews: PreviewProvider {
    static var previews: some View {
        CustomSlider(value: .constant(0.3), isHidden: .constant(true))
    }
}
