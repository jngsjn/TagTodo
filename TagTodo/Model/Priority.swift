//
//  Priority.swift
//  TagTodo
//
//  Created by JNGSJN on 2020/09/27.
//

import UIKit

enum Priority: Int {
    case low = 0
    case medium = 1
    case high = 2
    
    func color() -> UIColor {
        switch self{
        case .low: return #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) //colorLiteral
        case .medium: return #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        case .high: return #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }
    }
}
 
