//
//  PostViewModel.swift
//  iOS-Swift-MVVM
//
//  Created by Shanindu Rajapaksha on 2024-11-24.
//
import Foundation

class PostViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    func fetchPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            self.errorMessage = "Invalid URL"
            return
        }
        
        isLoading = true
        errorMessage = nil
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                self.isLoading = false
                if let error = error {
                    self.errorMessage = error.localizedDescription
                    return
                }
                
                guard let data = data else {
                    self.errorMessage = "No data received"
                    return
                }
                
                do {
                    self.posts = try JSONDecoder().decode([Post].self, from: data)
                } catch {
                    self.errorMessage = "Failed to decode data: \(error.localizedDescription)"
                }
            }
        }
        
        task.resume()
    }
}
