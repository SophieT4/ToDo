//
//  ToDoItem.swift
//  ToDo
//
//  Created by Scholar on 8/8/25.
//

import Foundation
import SwiftData//Let's us do CRUD operations


@Model //macro
class ToDoItem {
    var title: String //What the task is
    var isImportant: Bool //Is the task important
    
    init(title:String, isImportant:Bool) {
        self.title = title
        self.isImportant = isImportant
    }
}
