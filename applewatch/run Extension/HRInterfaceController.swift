//
//  HRInterfaceController.swift
//  run Extension
//
//  Created by Lauren McKenna on 9/29/18.
//  Copyright © 2018 Lauren McKenna. All rights reserved.
//

import Foundation
import WatchKit

class HRInterfaceController: ForceTouchInterfaceController {
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    @IBAction func didTapScreen(_ sender: Any) {
        let names = ["ControlsInterface", "StatInterface", "NowPlayingInterface"]
        WKInterfaceController.reloadRootPageControllers(withNames: names, contexts: nil, orientation: .horizontal, pageIndex: 1)
    }
    
}
