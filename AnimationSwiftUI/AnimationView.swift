//
//  AnimationView.swift
//  AnimationSwiftUI
//
//  Created by Julia Romanenko on 27.09.2022.
//

import SwiftUI

struct AnimationView: View {
    
    @State var isHidden = false
    @State var value = 0.1
    
    var body: some View {
        ZStack {
            Color.customDarkBlue
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Spacer()
                VStack {
                    ZStack {
                        if isHidden {
                            FireView(value: $value, color: .customRed, radius: 50)
                                .frame(width: 50, height: 50)
                            FireView(value: $value, color: .customOrange, radius: 20)
                                .frame(width: 20, height: 30)
                        }
                    }
                    StoveView()
                    
//Как вариант могут быть бревна
//                    WoodView()
                }
                CustomSwitch(isOn: $isHidden)
                CustomSlider(value: $value, isHidden: $isHidden)
            }
            .padding()
            .padding(.bottom, 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
