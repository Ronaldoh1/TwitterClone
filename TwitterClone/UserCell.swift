//
//  UserCell.swift
//  TwitterClone
//
//  Created by Ronald Hernandez on 1/6/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import LBTAComponents

class UserCell: DatasourceCell {

    override var datasourceItem: Any? {
        didSet{
            nameLabel.text = datasourceItem as? String
        }
    }

    let nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    override func setupViews() {
        super.setupViews()

        self.backgroundColor = .green

        addSubview(nameLabel)
        nameLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }

}

