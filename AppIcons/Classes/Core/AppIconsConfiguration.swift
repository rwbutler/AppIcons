//
//  AppIconsConfiguration.swift
//  AppIcons
//
//  Created by Ross Butler on 26/03/2020.
//

import Foundation

public struct AppIconsConfiguration {
    let cornerRadius: CGFloat?
    let primaryIconName: String
    
    public init(cornerRadius: CGFloat? = nil, primaryIconName: String? = nil) {
        self.cornerRadius = cornerRadius
        self.primaryIconName = primaryIconName ?? "Default"
    }
}
