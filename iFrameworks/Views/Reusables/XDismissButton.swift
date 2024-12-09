//
//  XDismissButton.swift
//  iFrameworks
//
//  Created by Yohai on 09/12/2024.
//

import SwiftUI

struct XDismissButton: View {
    
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
//                isShowingModalView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton()
    Spacer()
}
