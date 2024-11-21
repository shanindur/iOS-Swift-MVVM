//
//  HomeView.swift
//  iOS-Swift-MVVM
//
//  Created by Shanindu Rajapaksha on 2024-11-21.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("This is the Home Screen")
            .font(.largeTitle)
    }
}

struct SearchView: View {
    var body: some View {
        Text("This is the Search Screen")
            .font(.largeTitle)
    }
}

struct ProfileView: View {
    var body: some View {
        Text("This is the Profile Screen")
            .font(.largeTitle)
    }
}
