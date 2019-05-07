//
//  StatInterfaceController.swift
//  run Extension
//
//  Created by Lauren McKenna on 9/29/18.
//  Copyright © 2018 Lauren McKenna. All rights reserved.
//

import Foundation
import WatchKit

class StatInterfaceController: WKInterfaceController, WKCrownDelegate {
    private var crownAccumulator = 0.0

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        becomeCurrentPage()
        crownSequencer.delegate = self
        // Configure interface objects here.
    }
    
    override func willActivate() {
        super.willActivate()
        crownSequencer.focus()
    }
    
    @IBAction func didTapScreen(_ sender: Any) {
        let names = ["ControlsInterface", "HRInterface", "NowPlayingInterface"]
        WKInterfaceController.reloadRootPageControllers(withNames: names, contexts: nil, orientation: .horizontal, pageIndex: 1)
    }
    
    @IBAction func didPressCancel() {
        WKInterfaceController.reloadRootControllers(withNames: ["InterfaceController"], contexts: nil)
    }
    
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        crownAccumulator += rotationalDelta
        
        if crownAccumulator > 0.1 {
            let names = ["ControlsInterface", "HRInterface", "NowPlayingInterface"]
            WKInterfaceController.reloadRootPageControllers(withNames: names, contexts: nil, orientation: .horizontal, pageIndex: 1)
            resetAccumulator()
        } else if crownAccumulator < -0.1 {
            resetAccumulator()
        }
    }

    private func resetAccumulator() {
        crownAccumulator = 0.0
    }
}
