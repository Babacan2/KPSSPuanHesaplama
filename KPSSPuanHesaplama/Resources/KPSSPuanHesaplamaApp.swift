//
//  KPSSPuanHesaplamaApp.swift
//  KPSSPuanHesaplama
//
//  Created by Enes Babacan on 18.08.2024.
//

import SwiftUI

@main
struct KPSSPuanHesaplamaApp: App {
    
    
    init() {
        let appearenceNav = UINavigationBarAppearance()
        appearenceNav.configureWithOpaqueBackground()
        UINavigationBar.appearance().standardAppearance = appearenceNav
        UINavigationBar.appearance().scrollEdgeAppearance = appearenceNav
        
        
        
        let appearenceTab = UITabBarAppearance()
        appearenceTab.configureWithOpaqueBackground()
        UITabBar.appearance().standardAppearance = appearenceTab
        UITabBar.appearance().scrollEdgeAppearance = appearenceTab
        
    }
    
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
