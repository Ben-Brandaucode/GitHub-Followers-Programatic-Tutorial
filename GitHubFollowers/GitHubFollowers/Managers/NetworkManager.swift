//
//  NetworkManager.swift
//  GitHubFollowers
//
//  Created by Ben Brandau Brandau on 12/2/20.
//

import Foundation

class NetworkManager{
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    private init (){}
    
    func getFollowers(for username: String, page: Int, completed: @escaping([Follower]?,String?) -> Void){
        let endpoint = baseURL + "/\(username)/followers?per_page=100&page\(page)"
        guard let url = URL(string: endpoint)else{
            completed(nil," This username entered is an invalid request. Please try again.")
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let _ = error {
                completed(nil,"unable to complete your request. Please check your internet connection.")
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil,"Invalid response from the server, Please try again.")
                return
            }
            
            guard let data = data else{
                completed(nil, "The Data from the server was invalid, please try again.")
                return
            }
            
            do{
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers,nil)
            } catch {
                completed(nil,"data recived from the Server waas invalid, Please try again.")
            }
        }
        task.resume()
    }
    
    
}
    


