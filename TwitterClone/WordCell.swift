//
//  WordCell.swift
//  TwitterClone
//
//  Created by Ronald Hernandez on 1/6/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class WordCell: UICollectionViewCell {

    let wordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Rest a lot "
        return label
    }()

    //must implement init with frame initializer, because every time this cell gets dequeued, this gets called.

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.backgroundColor = .orange
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        self.addSubview(wordLabel)
        setupConstraints()
    }

    private func setupConstraints() {
        wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        wordLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }

}
