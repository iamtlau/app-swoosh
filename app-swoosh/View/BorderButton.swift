//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Tom Lau on 9/25/18.
//  Copyright © 2018 TL Dev. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
