//
//  DataSource.swift
//  TwitterClone
//
//  Created by Ronald Hernandez on 1/6/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import LBTAComponents

class HomeDataSource: Datasource {

    let users: [User] = {
        let brianUser = User(name: "Ronald Hernandez", username: "@Ronaldoh1", bioText: "Professional iOS Developer by Day and Night. Love to Play soccer. Go Hoos!", profileImage: #imageLiteral(resourceName: "profileImage"))
        let rayUser =  User(name: "Ray Wenerlich", username: "@rwenderlich", bioText: "Ray is an iPhone Developer and tweets on topics related to iPhone, Software, and gaming. Checkout our conference", profileImage: #imageLiteral(resourceName: "ray"))

        return [brianUser, rayUser]
    }()

    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }

    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }

    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }

    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }

    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }

}
