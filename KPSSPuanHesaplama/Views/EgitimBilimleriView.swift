//
//  EgitimBilimleriView.swift
//  KPSSPuanHesaplama
//
//  Created by Enes Babacan on 19.08.2024.
//

import SwiftUI

struct EgitimBilimleriView: View {
    
    
    @State private var gkDogruSayisi:Double = 30
    @State private var gkYanlisSayisi:Double = 0
    
    @State private var gyDogruSayisi:Double = 40
    @State private var gyYanlisSayisi:Double = 10
    
    @State private var ebDogruSayisi:Double = 40
    @State private var ebYanlisSayisi:Double = 10
    
    @State private var sonuc2022:Double = 0
    @State private var sonuc2023:Double = 0
    @State private var sonuceb2022:Double = 0
    @State private var sonuceb2023:Double = 0
    
    @State private var isShowingSheet = false
    
    var body: some View {
        VStack {
            
            Form {
                
                
                Section {
                    
                    Stepper("Doğru Sayısı : \(gkDogruSayisi, specifier: "%.0f")", value: $gkDogruSayisi, in: 1...60 )
                        .sensoryFeedback(.selection, trigger: gkDogruSayisi)
                        .bold()
                    Stepper("Yanlış Sayısı : \(gkYanlisSayisi, specifier: "%.0f")", value: $gkYanlisSayisi, in: 0...60 )
                        .sensoryFeedback(.selection, trigger: gkYanlisSayisi)
                        .bold()
                    
                } header: {
                    Text("Genel Kültür")
                        .textCase(.none)
                        .foregroundColor(.main)
                } footer: {
                    if ((gkDogruSayisi + gkYanlisSayisi) > 60) {
                        Text("Toplam doğru ve yanlış sayısı 60'ı geçemez.")
                            .foregroundStyle(.red)
                    }
                }
                
                
                Section {
                    
                    Stepper("Doğru Sayısı : \(gyDogruSayisi, specifier: "%.0f")", value: $gyDogruSayisi, in: 1...60)
                        .sensoryFeedback(.selection, trigger: gyDogruSayisi)
                        .bold()
                    Stepper("Yanlış Sayısı : \(gyYanlisSayisi, specifier: "%.0f")", value: $gyYanlisSayisi, in: 0...60)
                        .sensoryFeedback(.selection, trigger: gyYanlisSayisi)
                        .bold()
                    
                } header: {
                    Text("Genel Yetenek")
                        .textCase(.none)
                        .foregroundColor(.main)
                } footer: {
                    if ((gyDogruSayisi + gyYanlisSayisi) > 60) {
                        Text("Toplam doğru ve yanlış sayısı 60'ı geçemez.")
                            .foregroundStyle(.red)
                    }
                }
                
                
                Section {
                    
                    Stepper("Doğru Sayısı : \(ebDogruSayisi, specifier: "%.0f")", value: $ebDogruSayisi, in: 1...80 )
                        .sensoryFeedback(.selection, trigger: ebDogruSayisi)
                        .bold()
                    Stepper("Yanlış Sayısı : \(ebYanlisSayisi, specifier: "%.0f")", value: $ebYanlisSayisi, in: 0...80 )
                        .sensoryFeedback(.selection, trigger: ebYanlisSayisi)
                        .bold()
                    
                    HesaplaButton(title: "Hesapla") {
                        
                        let gkNet = gkDogruSayisi - (gkYanlisSayisi / 4)
                        let gyNet = gyDogruSayisi - (gyYanlisSayisi / 4)
                        let ebNet = ebDogruSayisi - (ebYanlisSayisi / 4)
                        
                        
                        sonuc2022 = (48.865 + gyNet * Constants.eb2022GYKatsayi + gkNet * Constants.eb2022GKKatsayi)
                        sonuceb2022 = (Constants.eb2022Puan + gyNet * Constants.eb2022GYKatsayi + gkNet * Constants.eb2022GKKatsayi)
                        sonuc2023 = (48.846 + gyNet * 0.4756 + gkNet * 0.4192)
                        sonuceb2023 = (40.405 + gyNet * 0.3493 + gkNet * 0.3672 + ebNet * 0.37145)
                        
                        isShowingSheet.toggle()
                        
                    }
                    .disabled(formKontrol)
                    .sheet(isPresented: $isShowingSheet) {
                        sonucView(sonuc2022: sonuc2022, sonucEB2022: sonuceb2022, sonucOABT2022: nil, sonuc2023: sonuc2023, sonucEB2023: sonuceb2023, sonucOABT2023: nil)
                    }
                    
                } header: {
                    Text("Eğitim Bilimleri")
                        .textCase(.none)
                        .foregroundColor(.main)
                } footer: {
                    if ((ebDogruSayisi + ebYanlisSayisi) > 60) {
                        Text("Toplam doğru ve yanlış sayısı 80'ı geçemez.")
                            .foregroundStyle(.red)
                    }
                }
                              
            }
      
        }.navigationTitle("Eğitim Bilimleri")
    }
    
    var formKontrol: Bool {
        
        if ((gyDogruSayisi + gyYanlisSayisi) > 60 || (gkDogruSayisi + gkYanlisSayisi) > 60 || (ebDogruSayisi + ebYanlisSayisi) > 80) {
            return true
        } else {
            return false
        }
        
        
    }
    
}

#Preview {
    EgitimBilimleriView()
}
