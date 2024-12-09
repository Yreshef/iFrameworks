//
//  iFrameworkGridViewModel.swift
//  iFrameworks
//
//  Created by Yohai on 09/12/2024.
//

import Foundation
import SwiftUI

protocol ViewModel: ObservableObject { }

final class iFrameworkGridViewModel: ViewModel {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var selectedFramework: Framework? {
        didSet {  isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
}
