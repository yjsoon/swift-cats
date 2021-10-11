//
//  CatFactView.swift
//  Cats
//
//  Created by Yin Jie Soon on 11/10/21.
//

import SwiftUI

struct CatFactView: View {
    var body: some View {
        Text("This is Cat Fact View")
            .onAppear {
                let catFactManager = CatFactManager()
                catFactManager.getCatFact()
            }
    }
        
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}
