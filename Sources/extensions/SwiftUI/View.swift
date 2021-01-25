#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View{
    func getDevice()->Device{
        #if os(iOS)
        if UIDevice.current.model.contains("iPad"){
            return .iPad
        }
        else{
            return .iPhone
        }
        #else
        return .macOS
        #endif
    }
}

enum Device{
    case iPhone
    case iPad
    case macOS
}
#endif
