//
//  frameworkTitleView.swift
//  Apple-framework
//
//  Created by Arohi on 01/11/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    var framework : Framework
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
            
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
    
}
