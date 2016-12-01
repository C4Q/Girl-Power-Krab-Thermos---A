//
//  APIRequestManager.swift
//
//
//  Created by Erica Y Stevens on 12/1/16.
//
//

import Foundation
import Alamofire
import SwiftyJSON

class APIRequestManager {
    static let manager = APIRequestManager()
    private init() {}
    
    func fetchRandomTaco() {
        
        let url = URL(string:"http://taco-randomizer.herokuapp.com/random?full-taco=true")!
        Alamofire.request(url).responseJSON { (dataResponse) in
            if let jsonData = dataResponse.data {
                 let swiftyJSON = JSON(data: jsonData)
                    let recipe = swiftyJSON["base_layer"]["recipe"].stringValue
                    print("SWIFT JSON WORKED: \(recipe)")
            
            }
        }
    }
}













