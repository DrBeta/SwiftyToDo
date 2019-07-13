//
//  ContentView.swift
//  SwiftyToDo
//
//  Created by freedom on 7/13/19.
//  Copyright © 2019 Pykes. All rights reserved.
//

import SwiftUI

struct ContentView : View {
   
    @State var draftTitle: String = ""
    @State var isEditing: Bool = false
    var body: some View {
        NavigationView {
            
            List {
                TextField("Enter your name", text: $draftTitle, onCommit: self.addTask)
                

               
                }
             .navigationBarTitle(Text("ToDo ✓"))
        }
    }
    func addTask() {
        print("Commit")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
