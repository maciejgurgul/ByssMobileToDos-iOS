import UIKit

class CheckButton: UIButton {

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
        
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 48).isActive = true
        widthAnchor.constraint(equalToConstant: 48).isActive = true
        setImage(UIImage(named: "checkbox-selected"), for: .selected)
        setImage(UIImage(named: "checkbox-unselected"), for: .normal)
    }

}
