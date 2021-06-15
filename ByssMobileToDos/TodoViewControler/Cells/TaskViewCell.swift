import UIKit

class TaskViewCell: UITableViewCell {

    private let checkbutton = CheckButton()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            setupView()
        }

        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupView() {
            contentView.addSubview(checkbutton)
            contentView.addSubview(titleLabel)
            
            NSLayoutConstraint.activate([
                
                checkbutton.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
                checkbutton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
                
                titleLabel.leftAnchor.constraint(equalTo: checkbutton.rightAnchor, constant: 8),
                titleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
                titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24),
                titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
            ])
            
            
            checkbutton.addAction { [weak self] in
                guard let selected = self?.checkbutton.isSelected else { return }
                self?.checkbutton.isSelected = !selected
            }
        }
    
    public func setup(task: Task) {
        checkbutton.isSelected = task.completed
        titleLabel.text = task.title
    }
}
