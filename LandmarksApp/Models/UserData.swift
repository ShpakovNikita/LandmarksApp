//
//  UserData.swift
//  LandmarksApp
//
//  Created by Nikita Shpakov on 12/17/20.
//

import Foundation

class UserData: ObservableObject {
    @Published var landmarks: [Landmark] = load("Resources/landmarkData.json")
}
