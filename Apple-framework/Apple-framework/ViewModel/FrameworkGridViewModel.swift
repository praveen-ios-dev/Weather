//
//  FrameworkGridViewModel.swift
//  Apple-framework
//
//  Created by Arohi on 31/10/24.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
    @Published var isShowingDetailView : Bool = false
    var selectedFramework : Framework? {
        didSet { isShowingDetailView = true}
    }
    
    let column : [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
}
