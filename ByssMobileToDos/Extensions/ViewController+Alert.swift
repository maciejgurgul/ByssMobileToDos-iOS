import UIKit

extension UIViewController {
    func showAlert(message: String) {
        let alert = UIAlertController(title:nil,
                                      message: message, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "UIViewController.alert.ok".localized, style: .default, handler: nil))

        self.present(alert, animated: true)
    }
}
