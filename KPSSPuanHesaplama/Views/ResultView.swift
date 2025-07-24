//
//  ResultView.swift
//  KPSSPuanHesaplama
//
//  Created by Enes Babacan on 18.08.2024.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        
        NavigationStack {
            
            VStack {
                List {
                    ForEach(0 ..< 50) { item in
                        Text("Hesaplama \(item)")
                    }
                }
            }
            .navigationTitle("Geçmiş Hesaplamalar")
        }
    }
}

#Preview {
    ResultView()
}
