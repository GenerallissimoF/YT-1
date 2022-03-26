//
//  ViewController.swift
//  YT 1
//
//  Created by Ivan Adoniev on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {

  //var rickAnMoerty = [RickAndMoerty]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { return }
  
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, let response = response else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
           print(response)
            
            do {
                
                let json = try JSONDecoder().decode(RickAndMoerty.self, from: data)
                DispatchQueue.main.async {
                    print(json)
                }
                
            } catch {
                print (error.localizedDescription)
            }
        }
        .resume()
    }
}





