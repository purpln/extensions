#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
extension Color{
    init?(hex: String){
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: UInt64
        switch hex.count{
        case 3: (r, g, b) = ((int >> 8) * 17, (int >> 4 & 0xf) * 17, (int & 0xf) * 17)
        case 4: (r, g, b) = (int >> 12, int >> 8 & 0xff, int >> 4 & 0xff)
        case 6: (r, g, b) = (int >> 16, int >> 8 & 0xff, int & 0xff)
        case 8: (r, g, b) = (int >> 24 & 0xff, int >> 16 & 0xff, int >> 8 & 0xff)
        default:(r, g, b) = (1, 1, 1)
        }
        self.init(red: Double(r) / 255, green: Double(g) / 255, blue:  Double(b) / 255)
        return
    }
}
#endif
