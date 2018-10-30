//
//  UIImage+Storage.swift
//  ImageCache
//
//  Created by Radi Shikerov on 30.10.18.
//  Copyright © 2018 Radi Shikerov. All rights reserved.
//

import UIKit

extension UIImage {
    static func getRandom() -> UIImage? {
        let imageNames = ["superman", "ironman", "wonderwoman", "batman", "spiderman", "thor", "hulk"]
        if let imageName = imageNames.randomElement() {
            return UIImage(named: imageName)
        }
        
        return nil
    }
    
    
    static func loadFrom(path: String) -> UIImage? {
        let imageUrl: URL = URL(fileURLWithPath: path)
        if FileManager.default.fileExists(atPath: path),
            let imageData: Data = try? Data(contentsOf: imageUrl),
            let image: UIImage = UIImage(data: imageData, scale: UIScreen.main.scale) {
            return image
        }
        
        return nil
    }
    
    func storeAt(path: String) {
        let imageUrl: URL = URL(fileURLWithPath: path)
        do {
            try pngData()?.write(to: imageUrl)
        } catch let error {
            print("ERROR: Could not save the image. \(error.localizedDescription)")
        }
    }
}
