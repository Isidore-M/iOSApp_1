//
//  buttonsView.swift
//  Assignment1
//
//  Created by Eezy Mongo on 2025-09-18.
//

import SwiftUI

struct cta: View {
    var btTitle : String
    var body: some View {
        Button("\(btTitle)") {
            
        }
        .frame(width: 200, height: 40)
        .background(.accent)
        .foregroundColor(.white)
        .cornerRadius(30)
    }
}
struct secondaryBt: View {
    var btTitle : String
    var body: some View {
        Button("\(btTitle)") {
            
        }
        .frame(width: 94, height: 40)
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(30)
    }
}
#Preview {
    secondaryBt(btTitle: "Next")
}
