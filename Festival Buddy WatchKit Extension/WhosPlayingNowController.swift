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
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    
    func add(withDay day: Int, artists: [Artist]) {
        
        let calendar = Calendar.current
        let rows = table.numberOfRows
        table.insertRows(at: NSIndexSet(index: rows) as IndexSet, withRowType:
            "HeaderRowType")
        let itemRows = NSIndexSet(indexesIn: NSRange(location: rows + 1,
                                                     length: artists.count))
        table.insertRows(at: itemRows as IndexSet, withRowType:
            "StageRowType")
        
        
        for i in rows..<table.numberOfRows {
            let controller = table.rowController(at: i)
            
            if let controller = controller as? HeaderRowController {
                controller.dayLabel.setText("March \(day)th")
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
