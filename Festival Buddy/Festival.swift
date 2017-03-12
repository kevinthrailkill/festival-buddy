//
//  Festival.swift
//  Festival Buddy
//
//  Created by Kevin Thrailkill on 3/11/17.
//  Copyright © 2017 kevinthrailkill. All rights reserved.
//

import Foundation


class Festival  {
    
    var name: String
    var stages: [Stage]
    
    var allArtists: [Artist] {
        get {
            var artists : [Artist] = []
            
            for stage in stages {
                artists.append(contentsOf: stage.artists)
            }
            return artists
        }
    }
    
    init(festivalName: String, stagesAt: [Stage]){
        name = festivalName
        stages = stagesAt
    }
    
    
    func getArtistsPlayingNow() -> (timeString: String, artistsArray: [Artist]){
        
        var artists : [Artist] = []
        let calendar = Calendar.current

        
        
        for artist in self.allArtists {
            
            let startDay = calendar.component(.day, from: artist.startTime)
            let startHr = calendar.component(.hour, from: artist.startTime)

            
            if(startDay == 24 && startHr == 7){
                artists.append(artist)
            }
        }
        
        
        return ("time holder", artists)
    }
    
    
    
    
    
}


//Creates a mock festival modeling after Beyond Wonderland
func generateMockFestival() -> Festival {
    
    var stages : [Stage] = []
    
    stages.append(generateAquarium())
    stages.append(generateOuterRealm())
    stages.append(generateCheshireCove())
    stages.append(generateQueensDomain())
    stages.append(generateUpsideDownHouse())
    
    return Festival(festivalName: "Beyond Wonderland", stagesAt: stages)
    
}

