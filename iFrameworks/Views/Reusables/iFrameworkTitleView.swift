//
//  iFrameworkTitleView.swift
//  iFrameworks
//
//  Created by Yohai on 09/12/2024.
//

import SwiftUI


struct iFrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding(1)
    }
}

#Preview {
    iFrameworkTitleView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}
