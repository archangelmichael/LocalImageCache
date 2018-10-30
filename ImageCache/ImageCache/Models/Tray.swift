//
//  Tray.swift
//  ImageCache
//
//  Created by Radi Shikerov on 30.10.18.
//  Copyright © 2018 Radi Shikerov. All rights reserved.
//

import UIKit

class Tray: NSObject {
    private(set) var dirPath: String
    
    private var filePaths = [String]()
    
    init(path: String) {
        dirPath = path
        super.init()
        loadFoldersContent()
    }
    
    private func loadFoldersContent() {
        let fileManager = FileManager.default
        let documentsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
        do {
            let fileURLs = try fileManager.contentsOfDirectory(at: documentsURL, includingPropertiesForKeys: nil)
            // process files
        } catch {
            print("Error while enumerating files \(documentsURL.path): \(error.localizedDescription)")
        }
    }
}
