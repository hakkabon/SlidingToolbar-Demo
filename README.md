# SlidingToolbar Demo
Simple demo app that shows how to integrate [SlidingToolbar ](https://github.com/hakkabon/SlidingToolbar) into your application.

## Import Statement
First, add an import statement for *SlidingToolbar* like so:

```swift
import UIKit
import SlidingToolbar
```

## Toolbar buttons
Fill a toolbar with a bunch of toolbar buttons. You can separate them into units of buttons by adding a separator in between, if it makes sense to do so.  The below example shows 5 toolbar buttons, and 2 separators.

```swift

let lbutton1 = ToolbarButton(image: UIImage(named:"Icon-Light")!)
let lbutton2 = ToolbarButton(image: UIImage(named:"Icon-Plus")!)
let separator1 = ToolbarButton(separator: Separator())
let lbutton3 = ToolbarButton(image: UIImage(named:"Icon-Settings")!)
let lbutton4 = ToolbarButton(image: UIImage(named:"Icon-Microphone")!)
let separator2 = ToolbarButton(separator: Separator())
let lbutton5 = ToolbarButton(image: UIImage(named:"Icon-Trashcan")!)

self.leftToolbar = SlidingToolbar(parent: self, attachedTo: .left, withOffsets: [0.1, 1])
self.leftToolbar?.buttons = [ lbutton1, lbutton2, separator1, lbutton3, lbutton4, separator2, lbutton5 ]
self.leftToolbar?.delegate = self
self.leftToolbar?.title = "Left Toolbar"

```
## Action 
Attach a method to each toolbar button by assigning a closure to the action method of the toolbar button.

```swift

lbutton1.action = { print("button (1) tapped") }
lbutton2.action = { /* do sothing meaningful here ... */ }
lbutton3.action = { /* do sothing meaningful here ... */ }
lbutton4.action = { /* do sothing meaningful here ... */ }
lbutton5.action = { /* do sothing meaningful here ... */ }

```
The sample code uses two toolbars; one on each side of the device. For further details on how to use the delegate methods, see the sample code.  


## License
MIT
