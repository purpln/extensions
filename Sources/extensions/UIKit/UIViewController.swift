#if canImport(UIKit)
import UIKit

public extension UIViewController{
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        view.snapshotView(afterScreenUpdates: true)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
#endif
