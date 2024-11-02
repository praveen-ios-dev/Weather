//
//  WeatherButton.swift
//  sampleApp
//
//  Created by Arohi on 30/10/24.
//

import Foundation
import SwiftUI

struct ButtonView: View {
    var title: String
    var forgroundColor: Color
    var backGroundColor: Color
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(width: 280, height: 50)
                .background(backGroundColor.gradient)
                .foregroundColor(forgroundColor)
                .font(.title)
                .fontWeight(.bold)
                .cornerRadius(10.0)
        }
    }
}
