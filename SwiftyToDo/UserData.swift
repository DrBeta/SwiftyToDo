//
//  UserData.swift
//  SwiftyToDo
//
//  Created by freedom on 7/13/19.
//  Copyright © 2019 Pykes. All rights reserved.
//

import Combine
import SwiftUI

private let defaultTasks: [Task] = [
    Task(title: "Read SwiftUI Documentation 📚", isDone: false),
    Task(title: "Watch WWDC19 Keynote 🎉", isDone: true),
]

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    @UserDefaultValue(key: "Tasks", defaultValue: defaultTasks)
    var tasks: [Task] {
        didSet {
            didChange.send(self)
        }
    }
}
