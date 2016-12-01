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
        
        Alamofire.request("http://taco-randomizer.herokuapp.com/random?full-taco=true").responseJSON { dataResponse in
            print("Request: \(dataResponse.request)")
            print("Response: \(dataResponse.response)")
            print("Data: \(dataResponse.data)")
            print("Result: \(dataResponse.result)")
            
            if let json = dataResponse.result.value {
                print("Json: \(json)") // as the documentation points out, the json response handler makes use of JSONSerialization to parse out objects. meaning that this json is of type Any
            }
        }
        
        Alamofire.request("http://taco-randomizer.herokuapp.com/random?full-taco=true").validate().responseJSON { dataResponse in
            print("Request: \(dataResponse.request)")
            print("Response: \(dataResponse.response)")
            print("Data: \(dataResponse.data)")
            print("Result: \(dataResponse.result)")
            
            if dataResponse.result.value != nil {
                if let jsonData = dataResponse.data {
                    let swiftyJSON = JSON(data: jsonData)
                    //Getting a string from a JSON Dictionary
                    let slug = swiftyJSON["shell"]["slug"].stringValue
                    print("SWIFT JSON WORKED: \(slug)")

                //print("Json: \(json)") // as the documentation points out, the json response handler makes use of JSONSerialization to parse out objects. meaning that this json is of type Any
                }
            }
        }
    }    
}

