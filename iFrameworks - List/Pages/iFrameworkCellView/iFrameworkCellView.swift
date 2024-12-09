//
//  iFrameworkCellView.swift
//  iFrameworks - List
//
//  Created by Yohai on 09/12/2024.
//

import SwiftUI

struct iFrameworkCellView: View {
    
    let framework: Framework

    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

#Preview {
    iFrameworkCellView(framework: MockData.frameworks[0])
}
