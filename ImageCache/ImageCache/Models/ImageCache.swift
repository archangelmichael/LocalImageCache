//
//  ImageCache.swift
//  ImageCache
//
//  Created by Radi Shikerov on 30.10.18.
//  Copyright © 2018 Radi Shikerov. All rights reserved.
//

import UIKit

class ImageCache: NSObject {
    private(set) var dirPath: String
    
    private var folders = [Tray]()
    
    init(path: String) {
        dirPath = path
        loadFoldersContent()
        super.init()
    }
    
    private func loadFoldersContent() {
        let dir
        
        
        FileManager.default
    }
}
