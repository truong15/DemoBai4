//
//  CustomView.swift
//  DemoBai4
//
//  Created by Nguyen Van Truong on 4/24/19.
//  Copyright © 2019 Truong Nguyen V. All rights reserved.
//

import UIKit

protocol CustomViewDelegate: class {
    func customViewDidClicked(name: String)
}

class CustomView: UIView {

    @IBOutlet weak var nameLabel: UILabel!
    weak var delegate: CustomViewDelegate?
    @IBOutlet weak var avatarImageView: UIImageView!

    var name = "" {
        didSet {
            nameLabel.text = name
        }
    }
    var imageName = ""

    @IBAction func buttonClick(_ sender: UIButton) {
        delegate?.customViewDidClicked(name: name)
    }
}


// ContentSize
// Frame Size

//ContentOffSet
