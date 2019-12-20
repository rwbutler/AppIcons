//
//  AppIconsViewControllerFactory.swift
//  AppIcons
//
//  Created by Ross Butler on 20/12/2019.
//

import Foundation

struct IconsViewControllerFactory: ViewControllerFactory {
    
    typealias Delegate = ViewControllerCompletionDelegate
    
    private weak var completionDelegate: Delegate?
    
    init(completion: Delegate? = nil) {
        self.completionDelegate = completion
    }
    
    func manufacture() -> UIViewController {
        let viewController = AppIconsViewController()
        let viewModel = IconsViewModel(completion: completionDelegate)
        viewController.configure(viewModel)
        return viewController
    }
    
}