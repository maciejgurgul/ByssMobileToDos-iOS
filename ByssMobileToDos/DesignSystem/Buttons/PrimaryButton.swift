import UIKit

open class PrimaryButton: UIButton {

    public init() {
        super.init(frame: .zero)
        setup()
    }
    
    @available(*, unavailable)
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setup(title: String) {
        setTitle(title, for: .normal)
    }
    
    private func setup() {
        setTitleColor(.white, for: .normal)
        backgroundColor = .black
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 52).isActive = true
        layer.cornerRadius = 8
    }

}
