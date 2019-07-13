//
//  RowView.swift
//  IAMGOINGTO♥️SwiftUI
//
//  Created by freedom on 7/13/19.
//  Copyright © 2019 Pykes. All rights reserved.
//

import SwiftUI

struct RowView : View {
    var title: String
    var body: some View {
        Text(title)
    }
}

#if DEBUG
struct RowView_Previews : PreviewProvider {
    static var previews: some View {
        RowView(title: "Hi")
    }
}
#endif
