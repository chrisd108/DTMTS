//
//  Date.swift
//  DTMTS
//
//  Created by Chris Delaney on 11/11/2016.
//  Copyright © 2016 Delaney. All rights reserved.
//

import UIKit

import ObjectMapper

class Date: Mappable {
    
    var date: String?
    var totalItems: Int?
    var totalEvents: Int?
    var totalGames: Int?
    var games: [Game]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        date <- map["date"]
        totalItems <- map["totalItems"]
        totalEvents <- map["totalEvents"]
        totalGames <- map["totalGames"]
        games <- map["games"]
    }
}
