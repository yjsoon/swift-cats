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
            Spacer()
            if let catFact = catFactManager.catFact {
                Text(catFact.fact)
                    .padding()
                    .multilineTextAlignment(.center)
            } else {
                ProgressView()
            }
            Spacer()
            Rectangle()
                .foregroundColor(Color(.sRGB, red: 255/255, green: 200/255, blue: 0/255, opacity: 0.5))
                .frame(height: 10)
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
