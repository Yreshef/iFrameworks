//
//  iFrameworkGridView.swift
//  iFrameworks
//
//  Created by Yohai on 08/12/2024.
//

import SwiftUI

struct iFrameworkGridView: View {
    
    @StateObject private var viewModel = iFrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        iFrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                if let selectedFramework = viewModel.selectedFramework {
                    iFrameworkDetailView(framework: selectedFramework,
                                         isShowingDetailView:
                                            $viewModel.isShowingDetailView)
                    .presentationDetents([.fraction(0.99)])
                } else {
                    //show error message
                }
            }
            
        }
    }
}

#Preview {
    iFrameworkGridView()
        .preferredColorScheme(.dark)
}
