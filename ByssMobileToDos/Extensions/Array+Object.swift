import UIKit

extension Array where Element == Task {
    func with(id: Int) -> Task? {
        for item in self {
            if item.id == id {
                return item
            }
        }
        return nil
    }
}
