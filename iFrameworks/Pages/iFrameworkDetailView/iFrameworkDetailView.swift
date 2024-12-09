//
//  iFrameworkDetailView.swift
//  iFrameworks
//
//  Created by Yohai on 08/12/2024.
//

import SwiftUI

struct iFrameworkDetailView: View {
    
    let framework: Framework
    let buttonTitle: String = "Learn More"
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        VStack {
            
            XDismissButton(isShowingModalView: $isShowingDetailView)
            
            Spacer()
            
            iFrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                iFButton(title: buttonTitle)
            }
        }
        .padding()
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.google.com")!)
        }
    }
}

#Preview {
    iFrameworkDetailView(framework: MockData.frameworks.first!, isShowingDetailView: .constant(false))
}
