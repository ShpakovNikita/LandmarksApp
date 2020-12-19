//
//  ContentView.swift
//  LandmarksWatch Extension
//
//  Created by Nikita Shpakov on 12/19/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
