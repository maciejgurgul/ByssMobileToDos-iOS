import UIKit

open class SecondaryButton: UIButton {

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
        setTitleColor(.black, for: .normal)
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 52).isActive = true
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        
    }

}
