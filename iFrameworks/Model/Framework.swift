//
//  Framework.swift
//  iFrameworks
//
//  Created by Yohai on 08/12/2024.
//

import Foundation

struct Framework: Hashable, Identifiable {
    let id = UUID()
    
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}
