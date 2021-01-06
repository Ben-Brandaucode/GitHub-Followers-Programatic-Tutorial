//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Ben Brandau Brandau on 12/3/20.
//

import Foundation

enum GFError: String, Error {
    case invalidUserName = "This username created an invalid request. Please try again"
    case unableToComplete = "unable to complete your request. Please check your internet connection."
    case invalidResponse = "invalid resonse from the Server. Please try again."
    case invalidData  = " the data reciewved from the Server was invalid. Please try again"
}
