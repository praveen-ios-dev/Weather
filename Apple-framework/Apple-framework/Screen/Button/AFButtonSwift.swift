//
//  AFButtonSwift.swift
//  Apple-framework
//
//  Created by Arohi on 30/10/24.
//

import SwiftUI

struct AFButtonSwift: View {
    var title : String
    var action : ()-> Void
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .frame(width: CGFloat(UIScreen.main.bounds.width - 60), height: 50)
                .background(Color.red)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
        })
        
    }
}

struct crossButton : View {
    @Binding var isShowingDetailView : Bool
    var body: some View {
        Button(action: {
            isShowingDetailView = false
        }, label: {
            Image(systemName: "xmark")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        })
    }
}

