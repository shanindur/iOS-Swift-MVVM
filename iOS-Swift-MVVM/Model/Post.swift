//
//  Post.swift
//  iOS-Swift-MVVM
//
//  Created by Shanindu Rajapaksha on 2024-11-24.
//
struct Post : Codable, Identifiable {
    let id: Int
    let userId: Int
    let title: String
    let body: String
}
