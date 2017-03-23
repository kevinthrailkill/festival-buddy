//
//  FestivalJSON.swift
//  Festival Buddy
//
//  Created by Kevin Thrailkill on 3/22/17.
//  Copyright © 2017 kevinthrailkill. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class FestivalJSON {
    
    let name = "Beyond Wonderland"
    var stages: [StageJSON] = []
    var artists: [ArtistJSON] = []
    

    init() {
        
        if let path = Bundle.main.path(forResource: "beyond", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                let jsonObj = JSON(data: data)
                if jsonObj != JSON.null {
                    
                    for (key,subJson):(String, JSON) in jsonObj["Package"] {
                        
                        if(key == "2"){
                            //get artists
                            for (_, artist) in subJson["Events"] {
                                
                                if(artist["Title"] != JSON.null && artist["StageId"] != JSON.null){
                                  //  print(artist)
                                    let artistParsed = ArtistJSON(json: artist)
                                    artists.append(artistParsed)
                                }
                            }
                          
                        }else if(key == "14"){
                            //getstages
                            for (_, stage) in subJson["Stages"] {
                              //  print(stage)
                                let stageParsed = StageJSON(json: stage)
                                stages.append(stageParsed)
                            }
                        }
                    }
                
                } else {
                    print("Could not get json from file, make sure that file contains valid json.")
                }
            } catch let error {
                print(error.localizedDescription)
            }
        } else {
            print("Invalid filename/path.")
        }

    }

    
    func getStageToArtistMap(){
        
        var artistMap = [Int: [ArtistJSON]]()
        for artist in artists {
            
            var arr = artistMap[artist.stageID!] ?? [ArtistJSON]()
            arr.append(artist)
            artistMap[artist.stageID!] = arr
            
        }
        
        for stage in self.stages {
            stage.artists = artistMap[stage.stageID!]!
            stage.artists.sort { $0.startTime! < $1.startTime! }
        }
        
    }
    
}
