//
//  iFButton.swift
//  iFrameworks
//
//  Created by Yohai on 09/12/2024.
//

import SwiftUI

struct iFButton: View {
    
    var title: String
    var backgroundColor: Color = Color.red
    var foregroundColor: Color = Color.white
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(10)
    }
}

#Preview {
    iFButton(title: "Test Title")
}
