//
//  Artist.swift
//  Festival Buddy
//
//  Created by Kevin Thrailkill on 3/11/17.
//  Copyright © 2017 kevinthrailkill. All rights reserved.
//

import Foundation

class Artist {
    
    var name: String
    var startTime: Date
    var endTime: Date
    var favorite: Bool?
    
    init(artistName: String, sTime: Date, eTime: Date) {
        name = artistName
        startTime = sTime
        endTime = eTime
    }
    
}
