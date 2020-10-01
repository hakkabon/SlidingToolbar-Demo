//
//  ViewController.swift
//  SlidingToolbar-Demo
//
//  Created by Ulf Akerstedt-Inoue on 2020/10/01.
//  Copyright © 2020 hakkabon software. All rights reserved.
//

import UIKit
import SlidingToolbar

class ViewController: UIViewController {

    override var preferredScreenEdgesDeferringSystemGestures: UIRectEdge {
        return [.left,.right]
    }
    
    var leftToolbar: SlidingToolbar?
    var rightToolbar: SlidingToolbar?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Left toolbar

        let lbutton1 = ToolbarButton(image: UIImage(named:"Icon-Light")!)
        let lbutton2 = ToolbarButton(image: UIImage(named:"Icon-Plus")!)
        let separator1 = ToolbarButton(separator: Separator())
        let lbutton3 = ToolbarButton(image: UIImage(named:"Icon-Settings")!)
        let lbutton4 = ToolbarButton(image: UIImage(named:"Icon-Microphone")!)
        let separator2 = ToolbarButton(separator: Separator())
        let lbutton5 = ToolbarButton(image: UIImage(named:"Icon-Trashcan")!)

        lbutton1.action = { print("button (1) tapped") }
        lbutton2.action = { print("button (2) tapped") }
        lbutton3.action = { print("button (3) tapped") }
        lbutton4.action = { print("button (4) tapped") }
        lbutton5.action = { print("button (5) tapped") }

        self.leftToolbar = SlidingToolbar(parent: self, attachedTo: .left, withOffsets: [0.1, 1])
        self.leftToolbar?.buttons = [ lbutton1, lbutton2, separator1, lbutton3, lbutton4, separator2, lbutton5 ]
        self.leftToolbar?.delegate = self
        self.leftToolbar?.title = "Left Toolbar"

        // Right toolbar

        let rbutton1 = ToolbarButton(image: UIImage(named:"Icon-Light")!)
        let rbutton2 = ToolbarButton(image: UIImage(named:"Icon-Plus")!)
        let rbutton3 = ToolbarButton(image: UIImage(named:"Icon-Settings")!)
        let rbutton4 = ToolbarButton(image: UIImage(named:"Icon-Microphone")!)
        
        rbutton1.action = { print("button (1) tapped") }
        rbutton2.action = { print("button (2) tapped") }
        rbutton3.action = { print("button (3) tapped") }
        rbutton4.action = { print("button (4) tapped") }

        self.rightToolbar = SlidingToolbar(parent: self, attachedTo: .right, withOffsets: [0.1, 1])
        self.rightToolbar?.buttons = [ rbutton1, rbutton2, rbutton3 ]
        self.rightToolbar?.delegate = self
        self.rightToolbar?.title = "Right Toolbar"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Expand the toolbars, or ...
        leftToolbar?.expand()
        rightToolbar?.expand()

        // collapse the toolbars.
        // leftToolbar?.close()
        // rightToolbar?.close()
    }
}

extension ViewController: SlidingToolbarDelegate {
    
    // This delegate method is called for any delta change in its position.
    func slidingToolbar(_ slidingToolbar: SlidingToolbar, didChangeOffset offset: CGPoint) {
        if slidingToolbar.title == "Left Toolbar" {
            print("Left toolbar offset: \(offset)")
        } else {
            print("Right toolbar offset: \(offset)")
        }
    }
    
    func slidingToolbarWillExpand(_ slidingToolbar: SlidingToolbar) {
    }
    
    func slidingToolbarWillCollapse(_ slidingToolbar: SlidingToolbar) {
    }
    
    func slidingToolbarDidExpand(_ slidingToolbar: SlidingToolbar) {
    }
    
    func slidingToolbarDidCollapse(_ slidingToolbar: SlidingToolbar) {
    }
}
