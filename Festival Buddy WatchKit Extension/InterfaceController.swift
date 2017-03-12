//
//  InterfaceController.swift
//  Festival Buddy WatchKit Extension
//
//  Created by Kevin Thrailkill on 3/11/17.
//  Copyright © 2017 kevinthrailkill. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    var stages: [Stage] = []
    let festival = generateMockFestival()
    
    @IBAction func goToStages() {
        
        let names: [String] = stages.map { c in "Stages" }
        presentController(withNames: names, contexts: stages)
        
    }

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        
        stages = festival.stages
        
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
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        if(segueIdentifier == "whosplayingnowsegue"){
            
            
            
            return festival.allArtists
        }
        
        return nil
        
    }

}
