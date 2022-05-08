//
//  XMarkButton.swift
//  CryptoTracker
//
//  Created by Bradley Hoang on 08/05/2022.
//

import SwiftUI

struct XMarkButton: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        Button(action: {
            isPresented.toggle()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton(isPresented: .constant(false))
    }
}
