#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {
    var device: Device {
        #if os(iOS)
        if UIDevice.current.model.contains("iPad") {
            return .ipad
        } else {
            return .iphone
        }
        #elseif os(watchOS)
        return .watch
        #else
        return .macos
        #endif
    }
}
public enum Device{
    case iphone
    case ipad
    case watch
    case macos
}

#endif
