import UIKit

import UIKit

extension Array where Element == Task {
    var uniqueId: Int {
        while true {
            let generatedId = Int.random(in: 0...Int.max)
            var duplicated = false
            self.forEach {
                if $0.id == generatedId {
                    duplicated = true
                }
            }
            if !duplicated {
                return generatedId
            }
        }
    }
}
