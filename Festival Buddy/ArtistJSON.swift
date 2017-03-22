//
//  ArtistJSON.swift
//  Festival Buddy
//
//  Created by Kevin Thrailkill on 3/22/17.
//  Copyright © 2017 kevinthrailkill. All rights reserved.
//

import Foundation
import SwiftyJSON

class ArtistJSON {
    
    var artistName : String?
    var startTime : Date?
    var endTime : Date?
    var stageID : Int?
    
    init(json: JSON){
        
        
        artistName = json["Title"].stringValue
        stageID = json["StageId"].int
        startTime = Date(timeIntervalSince1970: json["StartTime"].double!)
        endTime = Date(timeIntervalSince1970: json["EndTime"].double!)
        
        
    }

    
    
}
