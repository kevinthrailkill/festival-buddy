//
//  WhosPlayingNowController.swift
//  Festival Buddy
//
//  Created by Kevin Thrailkill on 3/11/17.
//  Copyright © 2017 kevinthrailkill. All rights reserved.
//

import WatchKit
import Foundation


class WhosPlayingNowController: WKInterfaceController {
    
    @IBOutlet var table: WKInterfaceTable!
    @IBOutlet var timeLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let festival = context as? Festival {
            
            let artistsNow = festival.getArtistsPlayingNow()
            
            timeLabel.setText(artistsNow.timeString)
            
            var map = [String: [Artist]]()
            for artist in artistsNow.artistsArray {
                
                var arr = map[artist.stageName] ?? [Artist]()
                arr.append(artist)
                map[artist.stageName] = arr
                
            }
            
            for(stage, artists) in map {
                add(withStage: stage, artists: artists)
            }
            
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    
    func add(withStage stage: String, artists: [Artist]) {
        
        let calendar = Calendar.current
        let rows = table.numberOfRows
        table.insertRows(at: NSIndexSet(index: rows) as IndexSet, withRowType:
            "HeaderRowType")
        let itemRows = NSIndexSet(indexesIn: NSRange(location: rows + 1,
                                                     length: artists.count))
        table.insertRows(at: itemRows as IndexSet, withRowType:
            "ArtistRowType")
        
        
        for i in rows..<table.numberOfRows {
            let controller = table.rowController(at: i)
            
            if let controller = controller as? HeaderRowController {
                controller.headerLabel.setText(stage)
            } else if let controller = controller as? ArtistRowController {
                let artist = artists[i - rows - 1]
                controller.artistLabel.setText(artist.name)
                
                let startHr = calendar.component(.hour, from: artist.startTime)
                let endHr = calendar.component(.hour, from: artist.endTime)
                
                controller.setTimeLabel.setText("\(startHr) - \(endHr)")
            }
        }
        
    }


}
