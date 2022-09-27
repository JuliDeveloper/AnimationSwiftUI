//
//  AnimationView.swift
//  AnimationSwiftUI
//
//  Created by Julia Romanenko on 27.09.2022.
//

import SwiftUI

struct AnimationView: View {
    
    @State var isOn = false
    
    var body: some View {
        ZStack {
            Color(red: 42/255, green: 42/255, blue: 55/255)
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                CustomSwitch(isOn: $isOn)
                CustomSlider()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
