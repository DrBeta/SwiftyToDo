//
//  ContentView.swift
//  SwiftyToDo
//
//  Created by freedom on 7/13/19.
//  Copyright © 2019 Pykes. All rights reserved.
//

import SwiftUI

struct TaskListView : View {
    @EnvironmentObject var userData: UserData

    @State var draftTitle: String = ""
    @State var isEditing: Bool = false
    var body: some View {
        NavigationView {
            
            List {
                TextField("Enter the name of your new task", text: $draftTitle, onCommit: self.addTask)
                

               
                }
             .navigationBarTitle(Text("ToDo ✓"))
        }
    }
    private func addTask() {

    }
}

//#if DEBUG
//struct ContentView_Previews : PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//#endif
