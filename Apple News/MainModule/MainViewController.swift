//
//  MainViewController.swift
//  Apple News
//
//  Created by Andrei Sushkou on 14.06.23.
//

import UIKit

protocol DataProtocol: AnyObject {
    
    func getWeatherData()
}

final class MainViewController: UIViewController {
    
    var articles = [Article]()
    
    let network = NetworkManager()
    
    override func loadView() {
        super.loadView()

        view = MainNewsView()
    }
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        network.getWeatherData()
    }
    
}
