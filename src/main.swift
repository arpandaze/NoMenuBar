import Foundation


func myCGEventCallback(
  proxy: CGEventTapProxy, type: CGEventType, event: CGEvent, refcon: UnsafeMutableRawPointer?
) -> Unmanaged<CGEvent>? {

    autoreleasepool{
        if(event.location.y < 5){
            event.location.y = 5
        }
    }

    return Unmanaged.passUnretained(event)
}

let eventMask = (1 << CGEventType.mouseMoved.rawValue)

guard let eventTap = CGEvent.tapCreate(
    tap: .cghidEventTap,
    place: .headInsertEventTap,
    options: .defaultTap,
    eventsOfInterest: CGEventMask(eventMask),
    callback: myCGEventCallback,
    userInfo: nil
) else {
    print("Failed to create event tap")
    exit(0)
}

let runLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, eventTap, 0)

CFRunLoopAddSource(CFRunLoopGetCurrent(), runLoopSource, .commonModes)
CGEvent.tapEnable(tap: eventTap, enable: true)

CFRunLoopRun()
