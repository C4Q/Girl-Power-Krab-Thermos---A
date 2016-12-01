//
//  Tacos.swift
//  RandomTaco
//
//  Created by Annie Tung on 12/1/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class Tacos {
    let shellName: String
    let shellRecipe: String
    let baseLayerName: String
    let baseLayerRecipe: String
    let seasoningName: String
    let seasoningRecipe: String
    let condimentName: String
    let condimentRecipe: String
    let mixinName: String
    let mixinRecipe: String
    init(shellName: String, shellRecipe: String, baseLayerName: String, baseLayerRecipe: String, seasoningName: String, seasoningRecipe: String, condimentName: String, condimentRecipe: String, mixinName: String, mixinRecipe: String) {
        self.shellName = shellName
        self.shellRecipe = shellRecipe
        self.baseLayerName = baseLayerName
        self.baseLayerRecipe = baseLayerRecipe
        self.seasoningName = seasoningName
        self.seasoningRecipe = seasoningRecipe
        self.condimentName = condimentName
        self.condimentRecipe = condimentRecipe
        self.mixinName = mixinName
        self.mixinRecipe = mixinRecipe
    }
    
    func getData() {
        let endPoint = URL(string: "https://taco-randomizer.herokuapp.com/random/?full-taco=true")!
        Alamofire.request(endPoint).responseJSON { (dataResponse) in
            if let jsonData = dataResponse.data {
                let swiftyJSON = JSON(data: jsonData)
                //Getting a string from a JSON Dictionary
                let slug = swiftyJSON["shell"]["slug"].stringValue
                print(slug)
            }
        }
        
    }
}
