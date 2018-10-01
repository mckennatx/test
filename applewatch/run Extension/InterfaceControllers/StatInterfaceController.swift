//
//  StatInterfaceController.swift
//  run Extension
//
//  Created by Lauren McKenna on 9/29/18.
//  Copyright © 2018 Lauren McKenna. All rights reserved.
//

import Foundation
import WatchKit

class StatInterfaceController: WKInterfaceController {
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        becomeCurrentPage()
        // Configure interface objects here.
    }
    
    @IBAction func didTapScreen(_ sender: Any) {
        let names = ["ControlsInterface", "HRInterface", "NowPlayingInterface"]
        WKInterfaceController.reloadRootPageControllers(withNames: names, contexts: nil, orientation: .horizontal, pageIndex: 1)
    }
    
    @IBAction func didPressCancel() {
        WKInterfaceController.reloadRootControllers(withNames: ["InterfaceController"], contexts: nil)
    }
}
