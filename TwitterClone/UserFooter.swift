//
//  UserFooter.swift
//  TwitterClone
//
//  Created by Ronald Hernandez on 1/6/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import LBTAComponents

class UserFooter: DatasourceCell {

    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.textColor = UIColor(r: 61, g: 167, b: 244)
        label.font = UIFont.systemFont(ofSize: 16)
        
        return label
    }()

    override func setupViews() {
        super.setupViews()

        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }

}
