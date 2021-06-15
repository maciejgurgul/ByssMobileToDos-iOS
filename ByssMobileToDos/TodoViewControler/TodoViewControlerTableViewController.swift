import UIKit

class TodoViewControler: UIViewController {

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let addTaskButton: PrimaryButton = {
        let button = PrimaryButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("TodoViewControlerTableViewController.button.add".localized, for: .normal)
        return button
    }()
    
    private let cancelButton: SecondaryButton = {
        let button = SecondaryButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("TodoViewControlerTableViewController.button.cancel".localized, for: .normal)
        return button
    }()
    
    private let buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 16
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    private func setupView() {
        view.backgroundColor = .white
        
        view.addSubview(buttonsStackView)
        buttonsStackView.addArrangedSubview(cancelButton)
        buttonsStackView.addArrangedSubview(addTaskButton)
                
        NSLayoutConstraint.activate([
            view.rightAnchor.constraint(equalTo: buttonsStackView.rightAnchor, constant: 16),
            view.leftAnchor.constraint(equalTo: buttonsStackView.leftAnchor, constant: -16),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: buttonsStackView.bottomAnchor, constant: 16)
        ])
    }
}

extension TodoViewControler: TodoViewControlerProtocol {
    func fillImaginaryTextField(with text: String?) {
        //TO DO
    }
    
    func toggleImaginaryCheckbox() {
        //TO DO
    }
    
    func imaginaryButtonActionAddNewToDo() {
        //TO DO
    }
    
    func imaginaryButtonActionRemoveTodo(with id: Int) {
        //TO DO
    }
    
    func imaginaryButtonActionToggleTodo(with id: Int) {
        //TO DO
    }
}
