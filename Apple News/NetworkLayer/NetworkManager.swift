//
//  NetworkManager.swift
//  Apple News
//
//  Created by Andrei Sushkou on 14.06.23.
//

import Foundation

final class NetworkManager: DataProtocol {
    
    private let urlString: String = "https://newsapi.org/v2/everything?q=apple&from=2023-06-12&to=2023-06-12&sortBy=popularity&apiKey="
    
    private let apiKey:String = "8d04d026541b40b082899ba5c60c89c4"
    
    fileprivate var articles = [Article]()
    
    func getWeatherData() {
        guard let url = URL(string: urlString + apiKey) else {
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let response {
                print (response)
            }
            if let error {
                print(error.localizedDescription)
                return
            }
            guard let data else {
                return
            }
            do {
                let result = try JSONDecoder().decode(ArticleResponse.self, from: data)
                self.articles = result.articles
                print (result.articles)
            } catch
                let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
