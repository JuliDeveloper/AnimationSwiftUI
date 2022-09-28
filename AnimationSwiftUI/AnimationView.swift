//
//  AnimationView.swift
//  AnimationSwiftUI
//
//  Created by Julia Romanenko on 27.09.2022.
//

import SwiftUI

struct AnimationView: View {
    
    @State var isOn = false
    @State var value = 0.1
    
    var body: some View {
        ZStack {
            Color(red: 42/255, green: 42/255, blue: 55/255)
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                
                Spacer()
                
                VStack {
                    ZStack {
                        FireView()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color(red: 241/255, green: 92/255, blue: 70/255))
                        FireView()
                            .frame(width: 20, height: 30)
                            .foregroundColor(Color(red: 250/255, green: 158/255, blue: 0))
                    }
                    .scaleEffect(value * 2)
                    WoodView()
                        .frame(width: 200, height: 100)
                        .foregroundColor(Color(red: 100/255, green: 64/255, blue: 15/255))
                }
                
                CustomSwitch(isOn: $isOn)
                CustomSlider(value: $value)
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
