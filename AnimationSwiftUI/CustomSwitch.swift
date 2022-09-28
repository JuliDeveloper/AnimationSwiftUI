//
//  CustomSwitch.swift
//  AnimationSwiftUI
//
//  Created by Julia Romanenko on 27.09.2022.
//

import SwiftUI

struct CustomSwitch: View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle(isOn: $isOn) {
            Text(isOn ? "Выкл" : "Вкл")
                .foregroundColor(.white)
        }
        .frame(width: 100, height: 100)
        .tint(Color(red: 241/255, green: 92/255, blue: 70/255))
    }
}

struct CustomSwitch_Previews: PreviewProvider {
    static var previews: some View {
        CustomSwitch(isOn: .constant(false))
    }
}
