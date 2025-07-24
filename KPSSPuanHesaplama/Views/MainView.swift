//
//  MainView.swift
//  KPSSPuanHesaplama
//
//  Created by Enes Babacan on 18.08.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    
                    Section{
                        
                        NavigationLink(destination: OrtaogretimView()) {
                            HStack {
                                Image(systemName: "1.circle")
                                    .resizable()
                                    .foregroundColor(.main)
                                    .frame(width: 30,height: 30)
                                Text("Ortaöğretim")
                                    .badge(
                                        Text("P94")
                                            .italic()
                                            
                                    )
                            }
                        }
                        
                        
                        
                        NavigationLink(destination: OnlisansView()) {
                            HStack {
                                Image(systemName: "2.circle")
                                    .resizable()
                                    .foregroundColor(.main)
                                    .frame(width: 30,height: 30)
                                Text("Önlisans")
                                    .badge(
                                        Text("P93")
                                            .italic()
                                            
                                    )
                            }
                        }
                        
                        
                        
                        NavigationLink(destination: LisansView()) {
                            HStack {
                                Image(systemName: "3.circle")
                                    .resizable()
                                    .foregroundColor(.main)
                                    .frame(width: 30,height: 30)
                                Text("Lisans (B Grubu)")
                                    .badge(
                                        Text("P3")
                                            .italic()
                                            
                                    )
                            }
                        }
                        
                        
                        
                        NavigationLink(destination: EgitimBilimleriView()) {
                            HStack {
                                Image(systemName: "4.circle")
                                    .resizable()
                                    .foregroundColor(.main)
                                    .frame(width: 30,height: 30)
                                Text("Eğitim Bilimleri")
                                    .badge(
                                        Text("P10")
                                            .italic()
                                            
                                    )
                            }
                        }
                        
                        
                        
                        NavigationLink(destination: OABTView()) {
                            HStack {
                                Image(systemName: "5.circle")
                                    .resizable()
                                    .foregroundColor(.main)
                                    .frame(width: 30,height: 30)
                                Text("ÖABT")
                                    .badge(
                                        Text("P121")
                                            .italic()
                                            
                                    )
                            }
                        }


                        
                        
                        
                    } header: {
                        Text("Bölüm Seçiniz")
                    }
                }
            }
            .navigationTitle("KPSS Puan Hesaplama")
        }
    }
}

#Preview {
    MainView()
}
