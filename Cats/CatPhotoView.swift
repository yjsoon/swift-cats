//
//  CatPhotoView.swift
//  Cats
//
//  Created by Yin Jie Soon on 11/10/21.
//

import SwiftUI

struct CatPhotoView: View {
    
    @ObservedObject var catPhotoMan = CatPhotoManager()
    
    var body: some View {
        VStack {
            if let image = catPhotoMan.image {
                Image(uiImage: image)
            } else {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
        }
        .onAppear {
            catPhotoMan.getCatPhoto()
        }
    }
}

struct CatPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        CatPhotoView()
    }
}
