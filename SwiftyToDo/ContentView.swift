//
//  ContentView.swift
//  SwiftyToDo
//
//  Created by freedom on 7/13/19.
//  Copyright © 2019 Pykes. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var names = ["John", "Colleen", "Brian", "Gene", "Deborah"]
    
    var body: some View {
        NavigationView {
            List {
                RowView(title: names[0])
                RowView(title: names[1])
            }
            .navigationBarItems(trailing:
                Button(action: {
                    print("Help tapped!")
                }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
            }) .navigationBarTitle(Text("To-Do ✔️"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
