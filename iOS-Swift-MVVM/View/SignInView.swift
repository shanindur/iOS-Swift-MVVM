//
//  ContentView.swift
//  iOS-Swift-MVVM
//
//  Created by Shanindu Rajapaksha on 2024-11-21.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ContentView()) {
                    Text("Sign In")
                        .padding(.horizontal,60)
                        .padding(.vertical,20)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(80)
                }
            }
            .navigationTitle("Sign In")
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    SignInView()
}
