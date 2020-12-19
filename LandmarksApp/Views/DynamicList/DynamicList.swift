//
//  DynamicList.swift
//  LandmarksApp
//
//  Created by Nikita Shpakov on 12/18/20.
//

import SwiftUI

struct DynamicList<Cell: View>: View {
    let children: [Cell]
    
    var body: some View {
        DynamicListView(cells: children)
    }
}

struct DynamicList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicList (children: [CircleImage(image: Image("turtlerock"))])
    }
}
