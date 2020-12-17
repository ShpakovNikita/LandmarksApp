//
//  Landmark.swift
//  LandmarksApp
//
//  Created by Nikita Shpakov on 12/17/20.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
