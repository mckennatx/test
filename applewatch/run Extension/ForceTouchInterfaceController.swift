//
//  ForceTouchInterfaceController.swift
//  run Extension
//
//  Created by Lauren McKenna on 9/29/18.
//  Copyright © 2018 Lauren McKenna. All rights reserved.
//

import Foundation
import WatchKit

class ForceTouchInterfaceController: WKInterfaceController {
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        addMenuItem(with: .pause, title: "PAUSE", action: #selector(longPausePressed))
        addMenuItem(with: .pause, title: "CANCEL", action: #selector(dismiss))
    }
    
    @objc func longPausePressed() {
        workoutPaused()
    }
    
    @objc func longResumePressed() {
        workoutResumed()
    }
    
    @objc func longFinishWorkoutPressed() {
        //Finish and Save workout
        clearAllMenuItems()
    }
    
    func workoutPaused() {
        let resume = #selector(longResumePressed)
        let finish = #selector(longFinishWorkoutPressed)
        //ForceTouchControlsFactory.resume(for: self, resumeSelector: resume, finishSelector: finish)
    }
    
    func workoutResumed() {
        let action = #selector(longPausePressed)
        //ForceTouchControlsFactory.pause(for: self, selector: action)
    }
}

/*struct ForceTouchControlsFactory {
    
    static func pause(for controller: WKInterfaceController, selector: Selector) {
        controller.clearAllMenuItems()
        controller.addMenuItem(with: .pause, title: NSLocalizedString(“PAUSE”, comment: “Force touch title to Pause workout”), action: selector)
        controller.addMenuItem(with: .decline, title: NSLocalizedString(“CANCEL”, comment: “Force touch title to Resume workout”), action: #selector(controller.dismiss))
    }
    
    static func resume(for controller: WKInterfaceController, resumeSelector: Selector, finishSelector: Selector) {
        controller.clearAllMenuItems()
        controller.addMenuItem(with: .play, title: NSLocalizedString(“RESUME”, comment: “Force touch title to resume workout”), action: resumeSelector)
        controller.addMenuItem(with: #imageLiteral(resourceName: “menu_item_stop”), title: NSLocalizedString(“FINISH”, comment: “Save Workout”), action: finishSelector)
    }
}*/
