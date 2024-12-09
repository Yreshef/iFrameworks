//
//  iFrameworkListViewModel.swift
//  iFrameworks - List
//
//  Created by Yohai on 09/12/2024.
//

import Foundation

protocol ViewModel: ObservableObject { }

final class iFrameworkListViewModel: ViewModel {
    
    var selectedFramework: Framework? {
        didSet {  isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
}
