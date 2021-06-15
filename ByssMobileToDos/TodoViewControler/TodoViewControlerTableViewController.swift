import UIKit

class TodoViewControler: UIViewController {

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(TaskViewCell.self, forCellReuseIdentifier: "TaskViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.bounces = false
        tableView.separatorColor = .clear
        tableView.separatorStyle = .none
        return tableView
    }()
    
    private let addTaskButton: PrimaryButton = {
        let button = PrimaryButton()
        button.setTitle("TodoViewControlerTableViewController.button.add".localized, for: .normal)
        return button
    }()
    
    private let cancelButton: SecondaryButton = {
        let button = SecondaryButton()
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
    
    private let textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "TodoViewControlerTableViewController.textfield.title".localized
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 8
        textField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        return textField
    }()
    
    private let addTaskLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TodoViewControlerTableViewController.label.AddTask".localized
        return label
    }()
    
    private var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        tasks = DataFetch.initData()
        tableView.reloadData()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        
        view.addSubview(tableView)
        view.addSubview(textField)
        view.addSubview(addTaskLabel)
        view.addSubview(buttonsStackView)
        buttonsStackView.addArrangedSubview(cancelButton)
        buttonsStackView.addArrangedSubview(addTaskButton)
                
        NSLayoutConstraint.activate([
            
            view.rightAnchor.constraint(equalTo: tableView.rightAnchor, constant: 16),
            view.leftAnchor.constraint(equalTo: tableView.leftAnchor, constant: -16),
            view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: tableView.topAnchor, constant: -16),
            tableView.bottomAnchor.constraint(equalTo: addTaskLabel.topAnchor, constant: -16),
            
            view.rightAnchor.constraint(equalTo: addTaskLabel.rightAnchor, constant: 16),
            view.leftAnchor.constraint(equalTo: addTaskLabel.leftAnchor, constant: -16),
            addTaskLabel.bottomAnchor.constraint(equalTo: textField.topAnchor),
            
            view.rightAnchor.constraint(equalTo: textField.rightAnchor, constant: 16),
            view.leftAnchor.constraint(equalTo: textField.leftAnchor, constant: -16),
            textField.bottomAnchor.constraint(equalTo: buttonsStackView.topAnchor, constant: -16),
            
            view.rightAnchor.constraint(equalTo: buttonsStackView.rightAnchor, constant: 16),
            view.leftAnchor.constraint(equalTo: buttonsStackView.leftAnchor, constant: -16),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: buttonsStackView.bottomAnchor, constant: 16)
        ])
    }
}

extension TodoViewControler: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TaskViewCell") as? TaskViewCell else {
            return UITableViewCell()
        }
        cell.setup(task: tasks[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    
}

extension TodoViewControler: UITableViewDelegate {
    
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
