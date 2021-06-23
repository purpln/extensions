#if canImport(UIKit)
import UIKit

public extension UINavigationController{
    func transparent(){
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
    }
}
#endif
