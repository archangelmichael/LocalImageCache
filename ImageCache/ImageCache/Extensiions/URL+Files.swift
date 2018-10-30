//
//  URL+Files.swift
//  ImageCache
//
//  Created by Radi Shikerov on 30.10.18.
//  Copyright © 2018 Radi Shikerov. All rights reserved.
//

import UIKit

enum DirType {
    case docs
    case system
}

extension URL {
    static func getDirPath(type: DirType = .docs) -> URL? {
        switch type {
        case .system:
            return FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first
        default:
            return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        }
    }
}
