//
//  CatPhotoManager.swift
//  Cats
//
//  Created by Yin Jie Soon on 18/10/21.
//

import Foundation
import SwiftUI

class CatPhotoManager: ObservableObject {
    
    @Published var image: UIImage?
    
    func getCatPhoto() {
        
        let apiURL = URL(string: "https://cataas.com/c")!
        let request = URLRequest(url: apiURL)
        
        image = nil
        
        URLSession.shared.dataTask(with: request) { data, request, Error in
            if let data = data {
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
            }
        }.resume()
        
    }
    
}
