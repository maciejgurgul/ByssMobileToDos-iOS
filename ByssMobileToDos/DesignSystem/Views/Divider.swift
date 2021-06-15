import UIKit

open class Divider: UIView {

    public init() {
        super.init(frame: .zero)
        setup()
    }

    @available(*, unavailable)
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 1).isActive = true
        backgroundColor = .black
    }
}
