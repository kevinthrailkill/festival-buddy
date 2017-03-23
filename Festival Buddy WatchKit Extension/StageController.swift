//
//  StageController.swift
//  Festival Buddy
//
//  Created by Kevin Thrailkill on 3/11/17.
//  Copyright © 2017 kevinthrailkill. All rights reserved.
//

import WatchKit
import Foundation


class StageController: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!
    @IBOutlet var stageNameLabel: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let calendar = Calendar.current
        var keys = [Int]()
        
        if let stage = context as? StageJSON {
            
            stageNameLabel.setText(stage.stageName!)
            
            var map = [Int: [ArtistJSON]]()
            for artist in stage.artists {
                
                let startDay = calendar.component(.day, from: artist.startTime!)
                var arr = map[startDay] ?? [ArtistJSON]()
                arr.append(artist)
                map[startDay] = arr
                
                if(!keys.contains(startDay)){
                    keys.append(startDay)
                }
                
            }
            
            for d in keys {
                //change to current day check
                if(d == 24) {
                    add(withDay: d, artists: map[d]!)
                }
            }
        
        }
    }
    
    
    func add(withDay day: Int, artists: [ArtistJSON]) {
        
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

                controller.headerLabel.setText("March \(day)th")
            } else if let controller = controller as? ArtistRowController {
                let artist = artists[i - rows - 1]
                controller.artistLabel.setText(artist.artistName!)
                
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "h:mma"
                dateFormatter.amSymbol = "AM"
                dateFormatter.pmSymbol = "PM"
                dateFormatter.timeZone = TimeZone(abbreviation: "PST")
                
                let startHr = dateFormatter.string(from: artist.startTime!)
                let endHr = dateFormatter.string(from: artist.endTime!)
                
                controller.setTimeLabel.setText("\(startHr) - \(endHr)")
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
    
    

}
