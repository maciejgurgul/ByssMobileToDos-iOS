import UIKit

protocol TodoViewControlerProtocol {
    func fillImaginaryTextField(with text: String?)
    func toggleImaginaryCheckbox()
    func imaginaryButtonActionAddNewToDo()
    func imaginaryButtonActionRemoveTodo(with id: Int)
    func imaginaryButtonActionToggleTodo(with id: Int)
}
