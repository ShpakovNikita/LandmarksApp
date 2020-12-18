//
//  DynamicListView.swift
//  LandmarksApp
//
//  Created by Nikita Shpakov on 12/18/20.
//

import SwiftUI
import UIKit

struct DynamicListView: UIViewRepresentable {
    func updateUIView(_ uiView: UICollectionView, context: Context) {
        
    }
    
    typealias UIViewType = UICollectionView

    func makeUIView(context: Context) -> UICollectionView {
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: BounceLayout()
        )
        collectionView.dataSource = context.coordinator
        collectionView.delegate = context.coordinator
        collectionView.backgroundColor = .white
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")

        return collectionView
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
        // TODO: remove
        private let fakeDataSource = (0...10000).map { $0 }
        
        var parent: DynamicListView

        init(_ dynamicListView: DynamicListView) {
            parent = dynamicListView
        }
        
        // UICollectionViewDelegateFlowLayout
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return .init(width: collectionView.bounds.size.width, height: 50)
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return .init(
                top: 12,
                left: 12,
                bottom: 12,
                right: 12
            )
        }
        
        //UICollectionViewDataSource
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return fakeDataSource.count
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
            cell.backgroundColor = .black
            return cell
        }
    
    }
}
