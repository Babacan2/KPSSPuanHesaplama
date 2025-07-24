//
//  HesaplaButton.swift
//  KPSSPuanHesaplama
//
//  Created by Enes Babacan on 19.08.2024.
//

import SwiftUI

struct HesaplaButton: View {
    
    let title : String
    let aksiyon: () -> Void
    
    var body: some View {
        
        
        
        Button(action: {
            aksiyon()
        }, label: {
            Label("Hesapla", systemImage: "plus.forwardslash.minus")
                .font(.title2)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .bold()
        })
        .buttonStyle(.borderedProminent)
        .tint(.main)
        .padding(10)
        
        
        
        
    }
}

#Preview {
    HesaplaButton(title: "Hesapla") {
        print("Hello Swift")
    }
}
