//
//  HomeView.swift
//  iOS-Swift-MVVM
//
//  Created by Shanindu Rajapaksha on 2024-11-21.
//
import SwiftUI

struct ContentView: View {
    @State private var isTabViewHidden: Bool = false
    
    var body: some View {
        
        NavigationStack {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                
                PostsView()
                    .tabItem {
                        Label("Posts", systemImage: "magnifyingglass")
                    }
                
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
            }
            
        }
        //        .navigationTitle("Home")
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ContentView()
}
