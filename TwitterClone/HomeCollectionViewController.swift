//
//  HomeCollectionViewController.swift
//  TwitterClone
//
//  Created by Ronald Hernandez on 1/6/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cellID"
private let headerIdentifier = "headerID"
private let footerIdentifier = "footerID"

class HomeCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {



    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.register(WordCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerIdentifier)
        self.collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerIdentifier)

        self.collectionView?.backgroundColor = .white

        // Do any additional setup after loading the view.
    }

    // MARK: UICollectionViewDataSource


    // Remove the additional gaps between cells.

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)

        return cell
    }

    // MARK: UICollectionViewDelegate

    //These two methods must be overriden to setup the headerview

    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {

        if kind == UICollectionElementKindSectionHeader {

            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerIdentifier, for: indexPath)
            headerView.backgroundColor = .green

            return headerView
            
        } else {
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerIdentifier, for: indexPath)
            footerView.backgroundColor = .red

            return footerView
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {

        return CGSize(width: view.frame.width, height: 60)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }

    // MARK: UICollectionViewDelegateFlowLayout Delegate Methods

    //set the size for the cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 50)
    }
    
}
