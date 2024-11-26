//
//  ProfileView.swift
//  iOS-Swift-MVVM
//
//  Created by Shanindu Rajapaksha on 2024-11-21.
//

import SwiftUI

struct ProfileView: View {
    @StateObject private var viewModel = UserViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.isLoading {
                    ProgressView("Loading...")
                } else if let error = viewModel.errorMessage {
                    Text("Error: \(error)")
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                        .padding()
                } else {
                    List(viewModel.users) { user in
                        VStack(alignment: .leading) {
                            Text(user.name)
                                .font(.headline)
                            Text(user.email)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Users")
            .onAppear {
                viewModel.fetchUsers()
            }
        }
        
    }
}
