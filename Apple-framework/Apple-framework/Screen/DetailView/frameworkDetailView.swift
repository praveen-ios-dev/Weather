//
//  frameworkDetailView.swift
//  Apple-framework
//
//  Created by Arohi on 30/10/24.
//

import SwiftUI
import SafariServices

struct frameworkDetailView: View {
    @Binding var isShowingDetailView : Bool
    @State private var isLearnMoreClicked = false
    
    var framework : Framework
    var action : () -> Void
    var body: some View {
        VStack {            
            Image(framework.imageName)
                .resizable()
                .frame(width: 100, height: 100)
            Text(framework.name)
                .font(.title)
                .padding()
            Text(framework.description)
                .font(.title3)
            Spacer()
            AFButtonSwift(title: "Learn More", action: {
                isLearnMoreClicked = true
            })
        }
        .padding()
        .sheet(isPresented: $isLearnMoreClicked, content: {
            SafariViewController(url: URL(string: framework.url)! )
        })
    }
      
}


#Preview {
    frameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework) {
        
    }
}
