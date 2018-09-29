//
//  InterfaceController.swift
//  run Extension
//
//  Created by Lauren McKenna on 9/29/18.
//  Copyright © 2018 Lauren McKenna. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

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

    @IBAction func pushViews() {
        
        let names = ["ControlsInterface", "StatInterface", "NowPlayingInterface"]
        WKInterfaceController.reloadRootPageControllers(withNames: names, contexts: nil, orientation: .horizontal, pageIndex: 1)
    }
}
