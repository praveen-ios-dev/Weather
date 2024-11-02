//
//  FrameworkGridView.swift
//  Apple-framework
//
//  Created by Arohi on 30/10/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List{
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink {
                            frameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView, framework: framework) {
                                
                            }
                        } label: {
                        }
                        FrameworkTitleView(framework: framework)
                    }
                }
                .navigationTitle("🍎 Framework")
                
            }
            .tint(.white)
            
        }
        
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

