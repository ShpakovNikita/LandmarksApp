//
//  LandmarkList.swift
//  LandmarksApp
//
//  Created by Nikita Shpakov on 12/17/20.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    @State private var bounceUI = true
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            
            if (bounceUI) {
                DynamicList(children : getListData())
            }
            else
            {
                List() {
                    Toggle(isOn: $showFavoritesOnly) {
                        Text("Favorites only")
                    }
                            
                    Toggle(isOn: $bounceUI) {
                        Text("Bounce ui")
                    }
                    
                    ForEach(filteredLandmarks) { landmark in
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
        }
        .navigationTitle("Landmarks")
    }
    
    func getListData<T>() -> [T] {
        var views: [T] = []
        
        views.append(Toggle(isOn: $showFavoritesOnly) {
            Text("Favorites only")
        } as! T)
        
        views.append(Toggle(isOn: $bounceUI) {
            Text("Bounce ui")
        } as! T)
        
        for landmark in filteredLandmarks {
            views.append(LandmarkRow(landmark: landmark) as! T)
        }
        return views
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
