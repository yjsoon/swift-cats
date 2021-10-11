//
//  CatFactView.swift
//  Cats
//
//  Created by Yin Jie Soon on 11/10/21.
//

import SwiftUI

struct CatFactView: View {
    @ObservedObject var catFactManager = CatFactManager()

    var body: some View {
        VStack {
            if let catFact = catFactManager.catFact {
                Text(catFact.fact)
                    .padding()
                    .multilineTextAlignment(.center)
            } else {
                ProgressView()
            }
        }
            .onAppear {
                catFactManager.getCatFact()
            }
    }
        
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}
