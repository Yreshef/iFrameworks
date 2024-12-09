//
//  iFrameworksListview.swift
//  iFrameworks
//
//  Created by Yohai on 09/12/2024.
//

import SwiftUI

struct iFrameworksListview: View {
    @StateObject private var viewModel = iFrameworkListViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(destination: iFrameworkDetailView(framework: framework,
                                                                         isShowingDetailView: $viewModel.isShowingDetailView)) {
                            iFrameworkCellView(framework: framework)
                        }
                    }
                    .listRowBackground(Color.black)
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    iFrameworksListview()
        .preferredColorScheme(.dark)
}
