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
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            iFrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self, destination: { framework in
                iFrameworkDetailView(framework: framework)
            })
        }
    }
}

#Preview {
    iFrameworkGridView()
        .preferredColorScheme(.dark)
}
