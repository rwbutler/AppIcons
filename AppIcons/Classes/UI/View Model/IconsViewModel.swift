//
//  IconsViewModel.swift
//  AppIcons
//
//  Created by Ross Butler on 20/12/2019.
//

import Foundation

public protocol ViewControllerCompletionDelegate: class {
    func viewControllerFinished()
}

protocol ViewModel {}

class IconsViewModel: ViewModel {
    
    typealias Delegate = ViewControllerCompletionDelegate
    
    private weak var completionDelegate: Delegate?
    private let iconsService = DefaultIconsService()
    let title = "Customise Icon"
    
    init(completion: Delegate? = nil) {
        self.completionDelegate = completion
    }
    
    func icon(at indexPath: IndexPath) -> Icon? {
        guard let icons = iconsService.icons() else {
            return nil
        }
        return icons.items[indexPath.item]
    }
    
    func iconsCount() -> Int {
        guard let icons = iconsService.icons() else {
            return 0
        }
        return icons.items.count
    }
    
    func selectIcon(at indexPath: IndexPath) {
        guard let icon = self.icon(at: indexPath) else {
            return
        }
        iconsService.setPreferredIcon(icon, completion: nil)
    }
    
}

extension IconsViewModel: Equatable {
    
    static func == (lhs: IconsViewModel, rhs: IconsViewModel) -> Bool {
        return lhs === rhs
    }
    
}

extension IconsViewModel: ViewControllerCompletionDelegate {
    
    func viewControllerFinished() {
        completionDelegate?.viewControllerFinished()
    }
    
}
