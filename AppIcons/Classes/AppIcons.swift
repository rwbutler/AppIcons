//
//  AppIcons.swift
//  AppIcons
//
//  Created by Ross Butler on 19/12/2019.
//

import Foundation
import UIKit

public class AppIcons {
    
    public typealias Configuration = AppIconsConfiguration
    
    /// Returns whether or not alternate app icons are available for the current platform.
    public static var isAvailable: Bool {
        return Services.icons.isAvailable()
    }
    
    /// Returns a `UIViewController` allowing app icon selection.
    public static func viewController(configuration: Configuration? = nil, completion: ViewControllerCompletionDelegate? = nil) -> UIViewController {
        let factory = IconsViewControllerFactory(configuration: configuration, completion: completion)
        return factory.manufacture()
    }
    
}
