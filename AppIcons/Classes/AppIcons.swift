//
//  AppIcons.swift
//  AppIcons
//
//  Created by Ross Butler on 19/12/2019.
//

import Foundation

public class AppIcons {
    
    public static func viewController(completion: ViewControllerCompletionDelegate? = nil) -> UIViewController {
        let factory = IconsViewControllerFactory(completion: completion)
        return factory.manufacture()
    }
    
}
