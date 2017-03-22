//
//  StageJSON.swift
//  Festival Buddy
//
//  Created by Kevin Thrailkill on 3/22/17.
//  Copyright © 2017 kevinthrailkill. All rights reserved.
//

import Foundation
import SwiftyJSON


class StageJSON {

    var stageName: String?
    var stageID: Int?
    var artists: [ArtistJSON] = []

        
    init(json: JSON){
        
        //need to fix to just rid of slash. might not show on app
        stageName = json["StageName"].stringValue.replacingOccurrences(of: "\'", with: "", options: NSString.CompareOptions.literal, range:nil)
        stageID = json["StageId"].int

    }
    
    
    


}
