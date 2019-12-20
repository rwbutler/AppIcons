//
//  AppIcons.swift
//  AppIcons
//
//  Created by Ross Butler on 19/12/2019.
//

import Foundation

struct Icons {
    let items: [Icon]
    
    init(primaryIcon: Icon, alternateIcons: [Icon]) {
        self.items = [primaryIcon] + alternateIcons
    }
}
