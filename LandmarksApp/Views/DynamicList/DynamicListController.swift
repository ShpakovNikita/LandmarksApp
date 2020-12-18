//
//  DynamicListController.swift
//  LandmarksApp
//
//  Created by Nikita Shpakov on 12/18/20.
//

import Foundation

import SwiftUI
import UIKit

struct DynamicListController: UIViewControllerRepresentable {
    
    var myCollectionView:UICollectionView?
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        
        return UIPageViewController()
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
    }
}
